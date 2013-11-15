require './lib/geoip_server'

password = ENV["HTTP_PASSWORD"] || "ahNgib5uHiZe4pha"
use Rack::Auth::Basic, "Restricted Area" do |username, passwd|
  username == 'cooltabs' and passwd == password
end

run Sinatra::Application
