json.extract! item, :id, :name, :username, :findeable, :email, :male, :organization_id, :admin, :country, :current_sign_in_at, :last_sign_in_at

json.set! 'avatar' do
  json.set! 'original', item.avatar.url(:original)
  json.set! 'thumb', item.avatar.url(:thumb)
end

# json.set! 'friends_count', item.friends.size

json.careers do
  json.cache_collection_if! should_cache?, item.careers, key: 'compact', expires_in: normal do |career|
    json.set! json_root(career) do
      json.partial! template_for_item(career, 'compact'), item: career
    end
  end
end

json.extract! item, :created_at, :updated_at