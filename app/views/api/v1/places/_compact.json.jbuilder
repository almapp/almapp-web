json.extract! resource, :id, :identifier, :name, :information, :zoom, :angle, :tilt, :latitude, :longitude, :floor
json.set! 'path', api_v1_place_path(resource)
