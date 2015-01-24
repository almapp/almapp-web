json.set! json_root do
  json.partial! template_for_item, item: @item

  json.subscribers do
    json.cache_collection! @item.subscribers, key: 'compact' do |subscriber|
      json.set! json_root(subscriber) do
        json.partial! template_for_item(subscriber, 'compact'), item: subscriber
      end
    end
  end

  json.cache! ['collection', @item], expires_in: normal do
    json.partial! template_for_collections, collection: %w(comments events posts published_posts likes dislikes)
  end
end