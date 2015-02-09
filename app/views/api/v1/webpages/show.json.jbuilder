json.set! json_root do
  json.partial! template_for_item, item: @item

  json.cache_if! should_cache?, ['compact', @item.organization], expires_in: 1.hours do
    json.organization do
      json.partial! template_for_item(@item.organization, 'compact'), item: @item.organization
    end
  end
end