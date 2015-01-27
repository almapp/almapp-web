json.set! json_root do
  json.partial! template_for_item, item: @item

  json.cache! ['compact', @item.organization], expires_in: 1.hours do
    json.organization do
      json.partial! template_for_item(@item.organization, 'compact'), item: @item.organization
    end
  end

  json.cache! ['collection', @item], expires_in: normal do
    json.partial! template_for_collections, collection: %w(faculties academic_unities courses teachers places comments events posts published_posts likes dislikes)
  end
end