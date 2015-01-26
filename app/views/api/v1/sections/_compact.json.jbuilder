json.extract! item, :id, :number, :vacancy, :course_id, :semester, :year
json.set! 'path', api_v1_section_path(item)