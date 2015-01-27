json.extract! item, :id, :schedule_module_id, :class_type

json.cache! ['compact', item.schedule_module] do
  json.schedule_module do
    json.partial! template_for_item(item.schedule_module, 'compact'), item: item.schedule_module
  end
end

json.extract! item, :place_name, :campus_name

place = item.place
# campus = item.campus

# json.set! 'campus_id', (campus.present?) ? campus.id : nil
# json.set! 'place_id', (place.present?) ? place.id : nil

json.cache! ['compact', place] do
  json.place do
    if place.present?
      json.partial! template_for_item(place, 'compact'), item: place
    else
      json.null!
    end
  end
end

json.extract! item, :created_at, :updated_at