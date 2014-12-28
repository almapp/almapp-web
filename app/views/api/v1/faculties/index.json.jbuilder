json.cache_collection! @resources, key: 'resource', expires_in: 1.hour do |resource|
  json.partial! template_for_resource, resource: resource
end