json.extract! item, :id, :abbreviation, :short_name, :name, :campus_id, :address
json.set! 'path', api_v1_faculty_path(item)