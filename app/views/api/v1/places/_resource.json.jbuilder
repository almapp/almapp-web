json.extract! resource, :id, :identifier, :name, :service, :like_count, :dislike_count, :information, :zoom, :angle, :tilt, :latitude, :longitude, :floor

json.area do
  polymorphic_type = polymorphic_type(resource.area)
  json.set! 'area_type', polymorphic_type
  json.extract! resource, :area_id
  json.set! polymorphic_type do
    json.cache! ['compact', resource.area], expires_in: 10.minutes do
      json.partial! template_for_resource(resource.area, 'compact'), resource: resource.area
    end
  end
end

json.events do
  json.cache_collection! resource.events, key: 'compact', expires_in: 5.minute do |resource|
    json.partial! template_for_resource(resource, 'compact'), resource: resource
  end
end

json.extract! resource, :created_at, :updated_at