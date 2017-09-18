json.array!(@songs) do |song|
  json.extract! song, :id, :name, :age, :image
  json.url song_url(song, format: :json)
end
