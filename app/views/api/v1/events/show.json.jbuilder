json.set! json_root do
  json.partial! template_for_item, item: @item

  json.user do
    json.cache! ['compact', @item.user] do
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

  json.host do
    polymorphic_type = polymorphic_type(@item.host)
    json.set! 'host_type', polymorphic_type
    json.extract! @item, :host_id
    json.set! polymorphic_type do
      json.cache! ['compact', @item.host], expires_in: 30.minutes do
        json.partial! template_for_item(@item.host, 'compact'), item: @item.host
      end
    end
  end

  json.cache! ['collection', @item], expires_in: normal do
    json.partial! template_for_collections, collection: %w(comments posts published_posts likes dislikes)
  end
end