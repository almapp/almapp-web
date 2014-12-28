json.extract! resource, :id, :identifier, :course_id, :number, :semester, :year

json.schedule_items  do
  json.cache_collection! resource.schedule_items, key: 'compact' do |item|
    json.partial! template_for_resource(item, 'compact'), resource: item
  end
end

json.teachers do
  json.cache_collection! resource.teachers, key: 'compact' do |teacher|
    json.partial! template_for_resource(teacher, 'compact'), resource: teacher
  end
end

json.assistants do
  json.cache_collection! resource.assistants, key: 'compact' do |assistant|
    json.partial! template_for_resource(assistant, 'compact'), resource: assistant
  end
end

json.extract! resource, :created_at, :updated_at