json.set! json_root do
  json.partial! template_for_item, item: @item

  json.campus do
    json.cache! ['compact', @item.campus] do
      json.partial! template_for_item(@item.campus, 'compact'), item: @item.campus
    end
  end

  json.cache! ['collection', @item], expires_in: normal do
    json.partial! template_for_collections, collection: %w(academic_unities courses teachers courses_students enrolled_students places comments events posts published_posts likes dislikes)
  end
end