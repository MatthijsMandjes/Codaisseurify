
function createSong(artist_id){
  event.preventDefault();
  var name = $('#name').val();
  var newSong = { name: name, artist_id: artist_id };
  alert("test1");
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

      alert("test2");
    })
    .fail(function(error) {
      testlog = console.log(error);
      alert("test3");

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
    })
}

$(document).ready(function() {

});
