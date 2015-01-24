json.set! json_root do
  json.partial! template_for_item, item: @item

  json.academic_unity do
    json.cache! ['compact', @item.academic_unity], expires_in: 1.hours do
      json.partial! template_for_item(@item.academic_unity, 'compact'), item: @item.academic_unity
    end
  end

  json.cache! ['collection', @item], expires_in: normal do
    json.partial! template_for_collections, collection: %w(enrolled_students comments events posts published_posts likes dislikes)
  end
end