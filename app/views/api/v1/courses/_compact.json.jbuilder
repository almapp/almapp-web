json.extract! resource, :id, :initials, :name, :credits, :availability, :academic_unity_id
json.set! 'path', api_v1_course_path(resource)