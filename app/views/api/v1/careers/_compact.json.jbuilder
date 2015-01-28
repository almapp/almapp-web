json.extract! item, :id, :name, :academic_unity_id
json.set! json_path_key, json_path(item) if should_show_paths?(item)