json.extract! item, :id, :day, :block
json.set! json_path_key, json_path(item) if should_show_paths?(item)