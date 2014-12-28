json.extract! resource, :id, :number, :course_id, :semester, :year
json.set! 'path', api_v1_section_path(resource)