json.partial! template_for_resource(resource), resource: resource

json.organization do
  json.cache! ['compact', resource.organization] do
    json.partial! template_for_resource(resource.organization, 'compact'), resource: resource.organization
  end
end

#json.sections do
#  json.cache_collection! @resource.sections, key: 'compact', expires_in: normal do |section|
#    json.partial! template_for_resource(section, 'compact'), resource: section
#  end
#end
#
#json.friends do
#  json.cache_collection! @resource.friends, key: 'compact', expires_in: normal do |friend|
#    json.partial! template_for_resource(friend, 'compact'), resource: friend
#  end
#end
#
#json.pending_friends do
#  json.cache_collection! @resource.pending_friends, key: 'compact', expires_in: normal do |pending_friend|
#    json.partial! template_for_resource(pending_friend, 'compact'), resource: pending_friend
#  end
#end
#
#json.assisting_sections do
#  json.cache_collection! @resource.assisting_sections, key: 'compact', expires_in: normal do |assisting_section|
#    json.partial! template_for_resource(assisting_section, 'compact'), resource: assisting_section
#  end
#end
#
#json.attending_events do
#  json.cache_collection! @resource.attending_events, key: 'compact', expires_in: normal do |attending_event|
#    json.partial! template_for_resource(attending_event, 'compact'), resource: attending_event
#  end
#end
#
#json.commented_content do
#  json.cache_collection! @resource.commented_content, key: 'compact', expires_in: normal do |content|
#    json.partial! template_for_resource(content, 'compact'), resource: content
#  end
#end
#
#json.liked_content do
#  json.cache_collection! @resource.liked_content, key: 'compact', expires_in: normal do |content|
#    json.partial! template_for_resource(content, 'compact'), resource: content
#  end
#end

