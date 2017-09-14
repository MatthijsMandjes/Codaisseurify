Photo.destroy_all
Artist.destroy_all
Song.destroy_all


artist1 = Artist.create!(name: "Gamil Halli", age: 28, remote_image_url: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505046964/artist1_qxsw5c.jpg", active: true)
artist2 = Artist.create!(name: "Odo Baldarich", age: 20, remote_image_url: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505060462/artist2_avy3n3.jpg", active: true)
artist3 = Artist.create!(name: "Audamar Antony", age: 28, remote_image_url: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505060521/artist3_sc6z2z.jpg", active: true)
artist4 = Artist.create!(name: "Selman Nima", age: 20, remote_image_url: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505060741/artist6_mfrmvb.jpg", active: true)
artist5 = Artist.create!(name: "Geraldo Hugleikr", age: 28, remote_image_url: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505060739/artist5_tjf7kw.jpg", active: true)
artist6 = Artist.create!(name: "Bibek Lugh", age: 20, remote_image_url: "http://res.cloudinary.com/du5cam6dp/image/upload/v1505060741/artist4_oscrok.jpg", active: true)


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
