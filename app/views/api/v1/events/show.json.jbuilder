json.set! json_root do
  json.partial! template_for_item, item: @item

  json.cache_if! should_cache?, ['compact', @item.user] do
    json.user do
      json.partial! template_for_item(@item.user, 'compact'), item: @item.user
    end
  end

  json.participants do
    json.cache_collection! @item.participants, key: 'compact' do |participant|
      json.set! json_root(participant) do
        json.partial! template_for_item(participant, 'compact'), item: participant
      end
    end
  end

  json.cache_if! should_cache?, ['collection', @item], expires_in: normal do
    json.partial! template_for_collections, collection: %w(comments posts published_posts likes dislikes)
  end
end