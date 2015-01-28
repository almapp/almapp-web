json.extract! item, :id, :abbreviation, :short_name, :name, :email, :address, :faculty_id, :place_id
json.set! json_path_key, json_path(item) if should_show_paths?(item)