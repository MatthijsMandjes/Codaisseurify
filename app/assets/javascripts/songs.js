
function createSong(){
  event.preventDefault();
  alert("test");
  var name = $('#name').val();
  var price = $('#price').val();
  var artist_id = $("#addsong").attr("data-artistid");
  var song_id = $("#addsong").attr("data-songid");


  var newSong = { name: name, price: price, artist_id: artist_id };
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
         <tr id="${song_id}">
              <td id=${artist_id}>${name}</td>
              <td><a href="/artists/${artist_id}/songs/${song_id}/edit">Edit</a></td>
              <td><a class="deletesong" data-artistid="artist${artist_id}" data-songid="song${song_id}" href="#">Delete</a></td>
         </tr>`);
      song_id = parseInt(song_id) + 1;
      $("#addsong").attr("data-songid", song_id);
    })
    .fail(function(error) {
      console.log(error);

    });
}
function deleteSong(){
  var song_id = event.target.id;
  var artist_id = $(`#${song_id}`).attr("data-artistid");

  $.ajax({
    type: "DELETE",
    url: "/api/artists/" + artist_id + "/songs/" + song_id,
    contentType: "application/json",
    dataType: "json"
  })
    .done(function(data) {
      console.log(data);
      $(`#song${song_id}`).remove();
    })
}
function deleteAllSongs(){
  var artist_id = event.target.id;

  $.ajax({
    type: "DELETE",
    url: "/api/artists/" + artist_id,
    contentType: "application/json",
    dataType: "json"
  })
    .done(function(data) {
      console.log(data);
      $(`#artist${artist_id}`).remove();

    })
}

$(document).ready(function() {
  $("#addsong").bind('click', createSong);
  $(".deletesong").bind('click', deleteSong);
  $(".deleteartist").bind('click', deleteAllSongs);
});
