json.extract! item, :id, :user_id, :content, :notify, :hidden, :place_id, :event_id, :created_at
json.set! json_path_key, json_path(item) if should_show_paths(item)
