json.extract! item, :id, :name, :email, :likes_count, :dislikes_count, :comments_count, :information
json.set! 'avatar' do
  json.set! 'medium', item.avatar.url(:medium)
  json.set! 'thumb', item.avatar.url(:thumb)
end
json.extract! item, :created_at, :updated_at