json.extract! item, :id, :name, :username, :findeable, :email, :male, :organization_id
json.set! json_path_key, json_path(item) if should_show_paths(item)
