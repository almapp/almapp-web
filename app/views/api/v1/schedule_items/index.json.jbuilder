json.cache_collection! @resources, key: 'resource', expires_in: 30.minute do |resource|
  json.partial! template_for_resource, resource: resource
end