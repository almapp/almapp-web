json.extract! resource, :id, :identifier, :name, :owner, :organization_id, :page_type, :information, :available, :home_url
json.set! 'path', api_v1_webpage_url(resource)