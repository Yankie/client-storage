json.array!(@shared_resources) do |shared_resource|
  json.extract! shared_resource, :path, :directory, :read, :write
  json.url shared_resource_url(shared_resource, format: :json)
end
