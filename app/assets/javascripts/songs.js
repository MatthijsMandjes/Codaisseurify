
function createSong(artist_id){
  event.preventDefault();
  var name = $('#name').val();
  var song_id = $(`#${artist_id}`).val();
  var newSong = { name: name, artist_id: artist_id };
  $.ajax({
    type: "POST",
    url: "/api/artists/" + artist_id + "/songs/",
    data: JSON.stringify({
    song: newSong
    }),
    contentType: "application/json",
    dataType: "json"
  })
    .done(function(data) {
      console.log(data);

       $("#songlist").append(`
         <tr>
              <td id=${artist_id}>${name}</td>
              <td><a href="/artists/${artist_id}/songs/${song_id}edit">Edit</a></td>
              <td>jooo</td>

         </tr>`);

    })
    .fail(function(error) {
      testlog = console.log(error);

    });
}
function deleteSong(artist_id, song_id){
  $.ajax({
    type: "DELETE",
    url: "/api/artists/" + artist_id + "/songs/" + song_id,
    contentType: "application/json",
    dataType: "json"
  })
    .done(function(data) {
      console.log(data);
      $(`#${song_id}`).remove();
    })
}
function deleteAllSongs(artist_id){
  alert("test");
  $.ajax({
    type: "DELETE",
    url: "/api/artists/" + artist_id,
    contentType: "application/json",
    dataType: "json"
  })
    .done(function(data) {
      alert("test2");
      console.log(data);
    })
}