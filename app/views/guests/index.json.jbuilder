json.array!(@guests) do |guest|
  json.extract! guest, :id, :smokes, :dogs, :cats, :bedding, :towels
  json.url guest_url(guest, format: :json)
end
