module League
  module Connection
    BASE_URL = 'https://prod.api.pvp.net/api/lol/'
    def connection
      @connection ||= begin
        conn = Faraday.new(BASE_URL) do |b|
          b.use Faraday::Response::Logger, logger
          b.use FaradayMiddleware::Mashify
          b.use FaradayMiddleware::ParseJson, content_type: 'application/json'
          b.use FaradayMiddleware::Caching, cache, strip_params: %w[apikey] unless cache.nil?
          b.response :raise_error
          b.adapter Faraday.default_adapter
        end

        conn.params['api_key'] = api_key unless api_key.nil?

        conn
      end
    end

    def get(path, params = nil)
      full_path = "#{params[:region].downcase}/#{params[:version].downcase}/" +
        path
      response = connection.get(full_path) do |request|
        request.params.merge!(params) if params
      end

      response.body
    end
  end
end
