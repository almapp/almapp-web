json.extract! item, :id, :identifier, :number, :vacancy, :course_id, :period, :year
json.set! json_path_key, json_path(item) if should_show_paths?(item)