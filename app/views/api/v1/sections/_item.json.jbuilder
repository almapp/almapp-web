json.extract! item, :id, :identifier, :course_id, :number, :vacancy, :semester, :year

json.schedule_items  do
  json.cache_collection! item.schedule_items, key: 'compact' do |item|
    json.schedule_item do
      json.partial! template_for_item(item, 'compact'), item: item
    end
  end
end

json.teachers do
  json.cache_collection! item.teachers, key: 'compact' do |teacher|
    json.teacher do
      json.partial! template_for_item(teacher, 'compact'), item: teacher
    end
  end
end

json.assistants do
  json.cache_collection! item.assistants, key: 'compact' do |assistant|
    json.user do
      json.partial! template_for_item(assistant, 'compact'), item: assistant
    end
  end
end

json.extract! item, :created_at, :updated_at