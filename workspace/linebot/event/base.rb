class Base
  # コンストラクタ
  def initialize(client, event)
    @client = client
    @event = event
    @messages = []
    self.parse
  end

  # 継承先で、メッセージに応じてどのような返答をするのか記載
  def parse
  end

  # 返信する関数
  def reply
    if !@messages.empty?
      @client.reply_message(@event["replyToken"], @messages)
    end
  end

  # テキストメッセージを作成する関数
  def create_text_message(text)
    return {
             type: "text",
             text: text,
           }
  end
end
