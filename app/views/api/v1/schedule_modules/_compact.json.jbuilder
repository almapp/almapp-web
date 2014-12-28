json.extract! resource, :id, :initials, :day, :block, :start_time, :end_time
json.set! 'path', api_v1_schedule_module_path(resource)