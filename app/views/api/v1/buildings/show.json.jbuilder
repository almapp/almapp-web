json.set! json_root do
  json.partial! template_for_item, item: @item

  json.cache_if! should_cache?, ['compact', @item.campus] do
    json.campus do
      json.partial! template_for_item(@item.campus, 'compact'), item: @item.campus
    end
  end

  json.cache_if! should_cache?, ['collection', @item], expires_in: normal do
    json.partial! template_for_collections, collection: %w(places comments events posts published_posts likes dislikes)
  end
end