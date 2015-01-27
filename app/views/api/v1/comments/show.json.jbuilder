json.set! json_root do
  json.partial! template_for_item, item: @item

  json.commentable do
    polymorphic_type = polymorphic_type(@item.commentable)
    json.set! 'commentable_type', polymorphic_type
    json.extract! @item, :commentable_id
    json.cache! ['compact', @item.commentable], expires_in: 30.minutes do
      json.set! polymorphic_type do
        json.partial! template_for_item(@item.commentable, 'compact'), item: @item.commentable
      end
    end
  end

  json.cache! ['collection', @item], expires_in: normal do
    json.partial! template_for_collections, collection: %w(likes dislikes)
  end
end