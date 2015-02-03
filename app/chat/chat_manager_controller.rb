class ChatManagerController < FayeRails::Controller
  observe ChatMessage, :after_create do |message|
    # ChatManagerController.publish('/chat', message.attributes)
  end

  channel '/chat' do
    monitor :subscribe do
      puts "Client #{client_id} subscribed to #{channel}."
    end
    monitor :unsubscribe do
      puts "Client #{client_id} unsubscribed from #{channel}."
    end
    monitor :publish do
      puts "Client #{client_id} published #{data.inspect} to #{channel}."
    end

    filter :in do
      puts "Inbound message #{message}."
      pass #modify, block drop
    end

    filter :out do
      puts "Outbound message #{message}."
      pass #modify, block drop
    end
  end
end