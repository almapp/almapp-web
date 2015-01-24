json.extract! item, :id, :schedule_module_id, :section_id, :class_type, :place_name, :campus_name, :place_id
json.set! 'path', api_v1_schedule_item_path(item)