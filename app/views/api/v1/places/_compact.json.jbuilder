json.extract! resource, :id, :identifier, :name, :information, :latitude, :longitude, :floor
json.set! 'path', api_v1_place_path(resource)
