json.set! json_root do
  json.partial! template_for_item, item: @item

  json.cache! ['compact', @item.organization] do
    json.organization do
      json.partial! template_for_item(@item.organization, 'compact'), item: @item.organization
    end
  end

#json.sections do
#  json.cache_collection! @item.sections, key: 'compact', expires_in: normal do |section|
#    json.partial! template_for_item(section, 'compact'), item: section
#  end
#end
#
#json.friends do
#  json.cache_collection! @item.friends, key: 'compact', expires_in: normal do |friend|
#    json.partial! template_for_item(friend, 'compact'), item: friend
#  end
#end
#
#json.pending_friends do
#  json.cache_collection! @item.pending_friends, key: 'compact', expires_in: normal do |pending_friend|
#    json.partial! template_for_item(pending_friend, 'compact'), item: pending_friend
#  end
#end
#
#json.assisting_sections do
#  json.cache_collection! @item.assisting_sections, key: 'compact', expires_in: normal do |assisting_section|
#    json.partial! template_for_item(assisting_section, 'compact'), item: assisting_section
#  end
#end
#
#json.attending_events do
#  json.cache_collection! @item.attending_events, key: 'compact', expires_in: normal do |attending_event|
#    json.partial! template_for_item(attending_event, 'compact'), item: attending_event
#  end
#end
#
#json.commented_content do
#  json.cache_collection! @item.commented_content, key: 'compact', expires_in: normal do |content|
#    json.partial! template_for_item(content, 'compact'), item: content
#  end
#end
#
#json.liked_content do
#  json.cache_collection! @item.liked_content, key: 'compact', expires_in: normal do |content|
#    json.partial! template_for_item(content, 'compact'), item: content
#  end
#end
end
