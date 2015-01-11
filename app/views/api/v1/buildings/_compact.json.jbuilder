json.extract! resource, :id, :abbreviation, :short_name, :name, :campus_id, :address
json.set! 'path', api_v1_building_path(resource)