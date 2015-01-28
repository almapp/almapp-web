json.set! json_root do
  json.partial! template_for_item, item: @item
  json.extract! @item, :like_count, :dislike_count

  json.cache_if! should_cache?, ['compact', @item.faculty], expires_in: very_long do
    json.faculty do
        json.partial! template_for_item(@item.faculty, 'compact'), item: @item.faculty
    end
  end
=begin
  json.cache_if! should_cache?, ['collection', @item], expires_in: normal do
    json.partial! template_for_collections, collection: %w(courses places teachers comments events posts published_posts likes dislikes)
  end
=end
end