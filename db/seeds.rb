Photo.destroy_all
Artist.destroy_all
Song.destroy_all


artist1 = Artist.create!(name: "Gamil Halli", age: 28, active: true)
artist2 = Artist.create!(name: "Odo Baldarich", age: 20, active: true)
artist3 = Artist.create!(name: "Audamar Antony", age: 28, active: true)
artist4 = Artist.create!(name: "Selman Nima", age: 20, active: true)
artist5 = Artist.create!(name: "Geraldo Hugleikr", age: 28, active: true)
artist6 = Artist.create!(name: "Bibek Lugh", age: 20, active: true)

song1 = Song.create!(name: "song1", price: 20, active: true, artist: artist1)
song2 = Song.create!(name: "song2", price: 30, active: true, artist: artist1)
song3 = Song.create!(name: "song3", price: 20, active: true, artist: artist1)

song4 = Song.create!(name: "song1", price: 30, active: true, artist: artist2)
song5 = Song.create!(name: "song2", price: 20, active: true, artist: artist2)
song6 = Song.create!(name: "song3", price: 30, active: true, artist: artist2)

song7 = Song.create!(name: "song1", price: 20, active: true, artist: artist3)
song8 = Song.create!(name: "song2", price: 30, active: true, artist: artist3)
song9 = Song.create!(name: "song3", price: 20, active: true, artist: artist3)

song10 = Song.create!(name: "song1", price: 30, active: true, artist: artist4)
song11 = Song.create!(name: "song2", price: 20, active: true, artist: artist4)
song12 = Song.create!(name: "song3", price: 30, active: true, artist: artist4)

song13 = Song.create!(name: "song1", price: 20, active: true, artist: artist5)
song14 = Song.create!(name: "song2", price: 30, active: true, artist: artist5)
song15 = Song.create!(name: "song3", price: 20, active: true, artist: artist5)

song16 = Song.create!(name: "song1", price: 30, active: true, artist: artist6)
song17 = Song.create!(name: "song2", price: 20, active: true, artist: artist6)
song18 = Song.create!(name: "song3", price: 30, active: true, artist: artist6)

photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505046964/artist1_qxsw5c.jpg", artist: artist1)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505046964/artist1_qxsw5c.jpg", artist: artist2)
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505046964/artist1_qxsw5c.jpg", artist: artist3)
photo4 = Photo.create!(remote_image_url: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505046964/artist1_qxsw5c.jpg", artist: artist4)
photo5 = Photo.create!(remote_image_url: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505046964/artist1_qxsw5c.jpg", artist: artist5)
photo6 = Photo.create!(remote_image_url: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505046964/artist1_qxsw5c.jpg", artist: artist6)
