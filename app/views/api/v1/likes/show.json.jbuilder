json.set! json_root do
  json.partial! template_for_item, item: @item

  json.likeable do
    polymorphic_type = polymorphic_type(@item.likeable)
    json.set! 'likeable_type', polymorphic_type
    json.extract! @item, :likeable_id
    json.cache! ['compact', @item.likeable], expires_in: 30.minutes do
      json.set! polymorphic_type do
        json.partial! template_for_item(@item.likeable, 'compact'), item: @item.likeable
      end
    end
  end
end