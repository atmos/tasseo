$LOAD_PATH.unshift File.dirname(__FILE__)
require "web"

use Rack::Session::Cookie, :key => 'rack.session', :path => '/',
     :expire_after => 2592000, :secret => ENV['SESSION_SECRET'] || 'foolsgold'

run Tasseo::Application
