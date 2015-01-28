json.extract! item, :id, :number, :vacancy, :course_id, :semester, :year
json.set! json_path_key, json_path(item) if should_show_paths?(item)