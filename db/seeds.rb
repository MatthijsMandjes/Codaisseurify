Artist.destroy_all
Song.destroy_all

artist1 = Artist.create!(name: "artist1", age: 28, image: "http://res.cloudinary.com/du5cam6dp/image/upload/v1504773176/sample.jpg", active: true)
artist2 = Artist.create!(name: "artist2", age: 20, image: "http://res.cloudinary.com/du5cam6dp/image/upload/v1504773176/sample.jpg", active: true)

song1 = Song.create!(name: "song1", price: 20, artist: artist1)
song2 = Song.create!(name: "song2", price: 30, artist: artist2)
