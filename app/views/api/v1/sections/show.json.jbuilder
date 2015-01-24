json.set! json_root do
  json.partial! template_for_item, item: @item

  json.course do
    json.cache! ['compact', @item.course] do
      json.partial! template_for_item(@item.course, 'compact'), item: @item.course
    end
  end

  json.cache! ['collection', @item], expires_in: normal do
    json.partial! template_for_collections, collection: %w(schedule_items assistants section_students teachers comments events posts published_posts)
  end
end