json.paths collection do |nested_resource|
  json.set! nested_resource do
    json.set! 'count', nested_resource_count(nested_resource)
    json.set! 'path', resource_path_for(nested_resource)
  end
end