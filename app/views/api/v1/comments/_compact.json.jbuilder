json.extract! item, :id, :anonymous, :hidden #, :like_count, :dislike_count
json.extract! item, :user_id, :comment, :created_at
json.set! json_path_key, json_path(item) if should_show_paths(item)