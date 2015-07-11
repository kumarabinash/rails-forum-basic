json.array!(@authentications) do |authentication|
  json.extract! authentication, :id, :index, :create, :destroy
  json.url authentication_url(authentication, format: :json)
end
