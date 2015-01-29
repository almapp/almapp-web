class ChatMessageValidator
  MONITORED_CHANNELS = %w(/meta/subscribe /meta/disconnect)

  def incoming(message, callback)
    puts message.inspect

    if MONITORED_CHANNELS.include?(message['channel'])
      puts message['channel']

    else


    end

    puts "Channel: #{message['channel']}"

    callback.call(message)
  end

  def outgoing(message, callback)
    callback.call(message)
  end
end