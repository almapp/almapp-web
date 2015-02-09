json.set! json_root do
  json.partial! template_for_item, item: @item
=begin
  json.cache_if! should_cache?, ['collection', @item], expires_in: normal do
    json.partial! template_for_collections, collection: %w(users campuses faculties academic_unities courses teachers enrolled_students places comments events posts published_posts likes dislikes)
  end
=end
end