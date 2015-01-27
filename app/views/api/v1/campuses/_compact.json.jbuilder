json.extract! item, :id, :abbreviation, :short_name, :name, :address, :organization_id, :address
json.set! json_path_key, json_path(item) if should_show_paths(item)