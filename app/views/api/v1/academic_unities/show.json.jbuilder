json.set! json_root do
  json.partial! template_for_item, item: @item
  json.extract! @item, :like_count, :dislike_count

  json.faculty do
    json.cache! ['compact', @item.faculty], expires_in: very_long do
      json.partial! template_for_item(@item.faculty, 'compact'), item: @item.faculty
    end
  end

  json.cache! ['collection', @item], expires_in: normal do
    json.partial! template_for_collections, collection: %w(courses places teachers comments events posts published_posts likes dislikes)
  end
end