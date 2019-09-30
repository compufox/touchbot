require 'elephrame'

TouchBot = Elephrame::Bots::TraceryBot.new('30s', 'words')

TouchBot.on_reply do |bot|
  bot.reply_with_mentions('touch #adjective# get #noun#', rules: 'default')
end

TouchBot.run do |bot|
  bot.post('touch #adjective# get #noun#',
           visibility: 'public')
end
