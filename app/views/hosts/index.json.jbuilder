json.array!(@hosts) do |host|
  json.extract! host, :id, :smokes, :dogs, :cats, :bedding, :towels
  json.url host_url(host, format: :json)
end
