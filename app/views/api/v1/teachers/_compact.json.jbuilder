json.extract! item, :id, :name, :email
json.set! 'path', api_v1_teacher_path(item)