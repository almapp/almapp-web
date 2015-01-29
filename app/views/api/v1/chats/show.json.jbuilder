json.set! json_root do
  json.partial! template_for_item, item: @item

  json.chat do
    json.cache_if! should_cache?, ['compact', item.chat] do
      json.partial! template_for_item(item.chat, 'compact'), item: item.chat
    end
  end

=begin
  json.cache_if! should_cache?, ['collection', @item], expires_in: normal do
    json.partial! template_for_collections, collection: %w(enrolled_students comments events posts published_posts likes dislikes)
  end
=end
end