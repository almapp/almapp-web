json.extract! item, :id, :identifier, :course_id, :number, :semester, :year

json.schedule_items  do
  json.cache_collection! item.schedule_items, key: 'compact' do |item|
    json.partial! template_for_item(item, 'compact'), item: item
  end
end

json.teachers do
  json.cache_collection! item.teachers, key: 'compact' do |teacher|
    json.partial! template_for_item(teacher, 'compact'), item: teacher
  end
end

json.assistants do
  json.cache_collection! item.assistants, key: 'compact' do |assistant|
    json.partial! template_for_item(assistant, 'compact'), item: assistant
  end
end

json.extract! item, :created_at, :updated_at