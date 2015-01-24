json.extract! item, :id, :class_type

json.schedule_module do
  json.cache! ['compact', item.schedule_module] do
    json.partial! template_for_item(item.schedule_module, 'compact'), item: item.schedule_module
  end
end

json.extract! item, :place_name, :campus_name

json.place do
  if item.place.present?
    json.cache! ['compact', item.place] do
      json.partial! template_for_item(item.place, 'compact'), item: item.place
    end
  else
    json.null!
  end
end

json.extract! item, :created_at, :updated_at