json.extract! resource, :id, :class_type

json.schedule_module do
  json.cache! ['compact', resource.schedule_module] do
    json.partial! template_for_resource(resource.schedule_module, 'compact'), resource: resource.schedule_module
  end
end

json.extract! resource, :place_name, :campus_name

json.place do
  if resource.place.present?
    json.cache! ['compact', resource.place] do
      json.partial! template_for_resource(resource.place, 'compact'), resource: resource.place
    end
  else
    json.null!
  end
end

json.extract! resource, :created_at, :updated_at