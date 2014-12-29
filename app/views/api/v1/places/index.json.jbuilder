json.cache! ['places', @parent], expires_in: 15.minutes do
  json.cache_collection! @resources, key: 'resource', expires_in: very_long do |resource|
    json.set! json_root(resource) do
      json.partial! template_for_resource, resource: resource
    end
  end
end

