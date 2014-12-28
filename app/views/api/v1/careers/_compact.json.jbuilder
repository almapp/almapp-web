json.extract! resource, :id, :name, :academic_unity_id
json.set! 'path', api_v1_career_path(resource)