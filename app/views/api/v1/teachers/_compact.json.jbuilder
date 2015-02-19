json.extract! item, :id, :name, :email
json.set! 'avatar' do
  json.set! 'original', item.avatar.url(:original)
  json.set! 'thumb', item.avatar.url(:thumb)
end
json.set! json_path_key, json_path(item) if should_show_paths?(item)