json.extract! item, :id, :title, :private, :host_id, :host_type, :publish_date, :from_date, :to_date
json.set! json_path_key, json_path(item) if should_show_paths?(item)