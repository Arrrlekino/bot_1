require 'telegram/bot'

TOKEN = '5203107867:AAEXwlAL-pmgK3sYFbV_6TucXpt_1OKxxX8'

Telegram::Bot::Client.run(TOKEN) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.send_message(
        chat_id: message.chat.id,
        text: "Hello, #{message.from.first_name}"
      )
    when '/hello'
        bot.api.send_message(
          chat_id: message.chat.id,
          text: "Hello, #{message.from.first_name}"
        )
    end
  end
end
