json.cache! ['places', @parent], expires_in: 15.minutes do
  json.cache_collection! @resources, key: 'resource', expires_in: 10.minutes do |resource|
    json.partial! template_for_resource(resource), resource: resource
  end
end
