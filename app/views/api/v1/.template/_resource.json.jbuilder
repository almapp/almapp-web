json.extract! resource, :id, :name, :short_name, :faculty_id, :address, :url, :email, :facebook, :twitter, :like_count, :dislike_count, :information
json.partial! 'api/v1/places/localization', localization: resource.localization
json.extract! resource, :created_at, :updated_at