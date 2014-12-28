json.cache_collection! @resources, key: 'resource' do |resource|
  json.partial! template_for_resource, resource: resource
end