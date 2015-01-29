json.extract! item, :id, :content, :flagged, :hidden, :available
json.set! json_path_key, json_path(item) if should_show_paths?(item)