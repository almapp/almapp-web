json.extract! item, :id, :identifier, :name, :owner, :organization_id, :page_type, :information, :available, :home_url
json.set! json_path_key, json_path(item) if should_show_paths?(item)