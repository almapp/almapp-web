json.extract! resource, :id, :identifier, :name, :owner, :organization_id, :information, :available, :home_url
json.set! 'path', api_v1_webpage_url(resource)