json.extract! resource, :id, :initials, :day, :block
json.set! 'start' do
  json.set! 'hour', resource.start_hour
  json.set! 'minute', resource.start_minute
end
json.set! 'end' do
  json.set! 'hour', resource.end_hour
  json.set! 'minute', resource.end_minute
end
