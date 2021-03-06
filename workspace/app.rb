require "dotenv"
require "sinatra"
require "line-bot-api"
require "./linebot/linebot.rb"

Dotenv.load

def client
  @client ||= Line::Bot::Client.new { |config|
    config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
    config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
  }
end

post "/callback" do
  body = request.body.read

  signature = request.env["HTTP_X_LINE_SIGNATURE"]
  unless client.validate_signature(body, signature)
    halt 400, { "Content-Type" => "text/plain" }, "Bad Request"
  end

  events = client.parse_events_from(body)

  events.each do |event|
    case event
    when Line::Bot::Event::Message
      case event.type
      when Line::Bot::Event::MessageType::Text
        text_message = TextMessage.new(client, event)
        text_message.reply
      end
    end
  end

  "OK"
end
