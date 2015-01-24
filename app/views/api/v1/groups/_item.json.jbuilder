json.extract! item, :id, :name, :email, :facebook, :twitter, :like_count, :dislike_count, :information

json.set! 'subscribers_count', item.subscribers.size

json.organizations item.organizations do |organization|
  json.cache! ['compact', organization] do
    json.partial! template_for_item(organization, 'compact'), item: organization
  end
end

json.faculties item.faculties do |faculty|
  json.cache! ['compact', faculty] do
    json.partial! template_for_item(faculty, 'compact'), item: faculty
  end
end

json.extract! item, :created_at, :updated_at