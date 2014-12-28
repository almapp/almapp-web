json.extract! resource, :id, :abbreviation, :short_name, :name, :address, :organization_id, :address
json.set! 'path', api_v1_campus_path(resource)