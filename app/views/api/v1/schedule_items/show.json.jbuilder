json.set! json_root do
  json.partial! template_for_item, item: @item

  json.section do
    json.cache! ['compact', @item.section] do
      json.partial! template_for_item(@item.section, 'compact'), item: @item.section
    end
  end
end