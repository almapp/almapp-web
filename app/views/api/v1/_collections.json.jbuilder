json.paths collection do |nested_item|
  json.set! nested_item do
    json.set! 'count', nested_item_count(nested_item)
    json.set! 'path', item_path_for(nested_item)
  end
end