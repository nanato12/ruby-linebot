require_relative "base"

class TextMessage < Base
  # 受け取ったメッセージに対して、返答する内容を@messagesに格納する。
  def parse
    case @event.message["text"]
    when "/uid"
      @messages.push(
        self.create_text_message("あなたのUID"),
        self.create_text_message(@event["source"]["userId"])
      )
    when "hello"
      @messages.push(
        self.create_text_message("hello")
      )
    end
  end
end
