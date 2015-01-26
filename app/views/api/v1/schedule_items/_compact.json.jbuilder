json.extract! item, :id, :schedule_module_id, :section_id, :class_type, :place_name, :campus_name

localization = item.localization

json.set! 'localization_path', (localization.present?) ? api_v1_place_path(localization) : json.null!

json.set! 'path', api_v1_schedule_item_path(item)