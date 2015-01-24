json.extract! item, :id, :name, :short_name, :faculty_id, :address, :url, :email, :facebook, :twitter, :like_count, :dislike_count, :information
json.partial! 'api/v1/places/localization', localization: item.localization
json.extract! item, :created_at, :updated_at