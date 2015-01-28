json.extract! item, :id, :identifier, :name, :service, :like_count, :dislike_count, :information, :zoom, :angle, :tilt, :latitude, :longitude, :floor

json.area do
  polymorphic_type = polymorphic_type(item.area)
  json.set! 'area_type', polymorphic_type
  json.extract! item, :area_id
  json.cache_if! should_cache?, ['compact', item.area], expires_in: 10.minutes do
    json.set! polymorphic_type do
      json.partial! template_for_item(item.area, 'compact'), item: item.area
    end
  end
end

json.extract! item, :created_at, :updated_at