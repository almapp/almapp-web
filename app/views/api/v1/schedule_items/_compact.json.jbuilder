json.extract! item, :id, :schedule_module_id, :section_id, :class_type, :place_name, :campus_name

place = item.place
campus = item.campus

json.set! 'campus_id', (campus.present?) ? campus.id : nil
json.set! 'place_id', (place.present?) ? place.id : nil

json.set! 'path', api_v1_schedule_item_path(item)