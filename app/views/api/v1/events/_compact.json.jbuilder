json.extract! item, :id, :title, :private, :host_id, :host_type, :publish_date, :from_date, :to_date
json.set! 'path', api_v1_event_path(item)