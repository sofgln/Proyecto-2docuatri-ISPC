function iniciarMap(){
    var coord = {lat:-31.4071806 ,lng: -64.1906638};
    var map = new google.maps.Map(document.getElementById('map'),{
      zoom: 10,
      center: coord
    });
    var marker = new google.maps.Marker({
      position: coord,
      map: map
    });
}
