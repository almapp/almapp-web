json.extract! resource, :id, :name, :email
json.set! 'path', api_v1_group_path(resource)