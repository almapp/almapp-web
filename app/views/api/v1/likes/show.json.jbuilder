json.set! json_root do
  json.partial! template_for_resource, resource: @resource

  json.likeable do
    polymorphic_type = polymorphic_type(@resource.likeable)
    json.set! 'likeable_type', polymorphic_type
    json.extract! @resource, :likeable_id
    json.set! polymorphic_type do
      json.cache! ['compact', @resource.likeable], expires_in: 30.minutes do
        json.partial! template_for_resource(@resource.likeable, 'compact'), resource: @resource.likeable
      end
    end
  end
end