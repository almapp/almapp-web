json.set! 'email_token' do
  json.set! 'access_token', @item.valid_access_token
  json.extract! @item, :provider, :expires_at, :created_at, :updated_at

end
