json.extract! item, :id, :initials, :day, :block
json.set! 'start' do
  json.set! 'hour', item.start_hour
  json.set! 'minute', item.start_minute
end
json.set! 'end' do
  json.set! 'hour', item.end_hour
  json.set! 'minute', item.end_minute
end
