json.extract! resource, :id, :name, :email, :facebook, :twitter, :like_count, :dislike_count, :information

json.set! 'subscribers_count', resource.subscribers.size

json.organizations resource.organizations do |organization|
  json.cache! ['compact', organization] do
    json.partial! template_for_resource(organization, 'compact'), resource: organization
  end
end

json.faculties resource.faculties do |faculty|
  json.cache! ['compact', faculty] do
    json.partial! template_for_resource(faculty, 'compact'), resource: faculty
  end
end

json.extract! resource, :created_at, :updated_at