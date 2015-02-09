json.extract! item, :id, :conversable_id, :conversable_type, :title, :available
json.set! json_path_key, json_path(item) if should_show_paths?(item)