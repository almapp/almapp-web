json.set! json_root do
  json.partial! template_for_resource, resource: @resource

  json.section do
    json.cache! ['compact', @resource.section] do
      json.partial! template_for_resource(@resource.section, 'compact'), resource: @resource.section
    end
  end
end