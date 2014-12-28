json.extract! resource, :id, :name, :username, :findeable, :email, :male, :organization_id, :admin, :country, :sign_in_count, :current_sign_in_at, :last_sign_in_at

json.set! 'friends_count', resource.friends.size

json.career do
  json.cache_collection! resource.careers, key: 'compact', expires_in: normal do |career|
    json.partial! template_for_resource(career, 'compact'), resource: career
  end
end

json.extract! resource, :created_at, :updated_at