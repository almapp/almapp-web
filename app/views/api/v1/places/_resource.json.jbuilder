json.extract! resource, :id, :identifier, :name, :service, :area_type, :area_id, :like_count, :dislike_count, :information, :zoom, :angle, :tilt, :latitude, :longitude, :floor

json.set! 'events_count', resource.events.size
json.events do
  json.cache_collection! resource.events, key: 'compact', expires_in: 5.minute do |resource|
    json.partial! template_for_resource(resource, 'compact'), resource: resource
  end
end

json.extract! resource, :created_at, :updated_at