json.array!(@posts) do |post|
  json.extract! post, :id, :type_id, :user_id, :name, :description
  json.url post_url(post, format: :json)
end
