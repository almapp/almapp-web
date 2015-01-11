json.set! json_root do
  json.partial! template_for_resource, resource: @resource

  json.organization do
    json.cache! ['compact', @resource.organization], expires_in: 1.hours do
      json.partial! template_for_resource(@resource.organization, 'compact'), resource: @resource.organization
    end
  end
end