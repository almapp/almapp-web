json.extract! item, :id, :identifier, :name, :owner, :organization_id, :page_type, :information, :available, :secure_protocol, :requires_login, :should_open_in_browser, :home_url, :login_url

json.set! 'icon' do
  json.set! 'original', item.icon.url(:original)
  json.set! 'small', item.icon.url(:small)
end

json.set! 'background' do
  json.set! 'original', item.background.url(:original)
  json.set! 'small', item.background.url(:small)
end

json.extract! item, :created_at, :updated_at