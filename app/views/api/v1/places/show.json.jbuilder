json.set! json_root do
  json.partial! template_for_resource, resource: @resource

  json.area do
    polymorphic_type = polymorphic_type(@resource.area)
    json.set! 'area_type', polymorphic_type
    json.extract! @resource, :area_id
    json.set! polymorphic_type do
      json.cache! ['compact', @resource.area], expires_in: 10.minutes do
        json.partial! template_for_resource(@resource.area, 'compact'), resource: @resource.area
      end
    end
  end

  json.cache! ['collection', @resource], expires_in: normal do
    json.partial! template_for_collections, collection: %w(comments events posts likes dislikes)
  end
end