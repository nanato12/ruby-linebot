require "dotenv"
require "sinatra"

Dotenv.load
puts ENV["LINE_CHANNEL_SECRET"]

get "/" do
  "hello"
end
