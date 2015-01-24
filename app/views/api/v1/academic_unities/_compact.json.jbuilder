json.extract! item, :id, :abbreviation, :short_name, :name, :email, :address, :faculty_id, :place_id
json.set! 'path', api_v1_academic_unity_path(item)