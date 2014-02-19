require 'faraday_middleware'
require 'hashie/mash'
require 'logger'
require 'league/version'
require 'league/mashify'
require 'league/connection'
require 'league/configuration'
require 'league/api'

module League
  extend League::Configuration
  extend League::Connection
  extend League::Api
end
