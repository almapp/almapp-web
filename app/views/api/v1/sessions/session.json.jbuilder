json.set! 'session' do
  json.private_data do
    json.extract! @resource, :uid, :provider, :sign_in_count, :current_sign_in_ip, :last_sign_in_ip
  end

  json.user do
    json.cache! ['full', @resource] do
      json.partial! "api/v1/users/full", item: @resource
    end
  end
end