json.set! json_root do
  json.partial! template_for_item, item: @item

  json.users do
    json.cache_collection_if! should_cache?, @item.users, key: 'compact' do |user|
      json.set! json_root(user) do
        json.partial! template_for_item(user, 'compact'), item: user
      end
    end
  end

  json.chat_messages do
    json.cache_collection_if! should_cache?, @item.chat_messages.order(id: :desc).limit(100), key: 'compact' do |chat_message|
      json.set! json_root(chat_message) do
        json.partial! template_for_item(chat_message, 'compact'), item: chat_message
      end
    end
  end

=begin
  json.cache_if! should_cache?, ['collection', @item], expires_in: normal do
    json.partial! template_for_collections, collection: %w(enrolled_students comments events posts published_posts likes dislikes)
  end
=end
end