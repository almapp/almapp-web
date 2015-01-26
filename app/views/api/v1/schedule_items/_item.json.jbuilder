json.extract! item, :id, :class_type

json.schedule_module do
  json.cache! ['compact', item.schedule_module] do
    json.partial! template_for_item(item.schedule_module, 'compact'), item: item.schedule_module
  end
end

json.extract! item, :place_name, :campus_name

json.localization do
  if item.localization.present?
    json.cache! ['compact', item.localization] do
      json.partial! template_for_item(item.localization, 'compact'), item: item.localization
    end
  else
    json.null!
  end
end

json.extract! item, :created_at, :updated_at