json.extract! item, :id, :identifier, :name, :information, :zoom, :angle, :tilt, :latitude, :longitude, :floor
json.set! json_path_key, json_path(item) if should_show_paths?(item)
