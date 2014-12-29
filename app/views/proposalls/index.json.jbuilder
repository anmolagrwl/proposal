json.array!(@proposalls) do |proposall|
  json.extract! proposall, :id
  json.url proposall_url(proposall, format: :json)
end
