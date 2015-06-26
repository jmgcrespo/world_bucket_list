
  var map;

  function initialize() {

    $.ajax({
      url: window.location.pathname + '/geo_data',
      dataType: 'json',
      success: function(geo_data) {

        console.log(geo_data);

        destcenter = geo_data.geometry.location;
        bounds = geo_data.geometry.bounds;
        console.log(google.maps.LatLng);
        map = new google.maps.Map(document.getElementById('map-canvas'), {
          zoom: 8,
          center: new google.maps.LatLng( destcenter.lat, destcenter.lng )
        });

        var sw = new google.maps.LatLng(bounds.southwest.lat,
          bounds.southwest.lng);
        var ne = new google.maps.LatLng(bounds.northeast.lat,
          bounds.northeast.lng);
        default_bounds =  new google.maps.LatLngBounds(sw,ne);

        map.fitBounds(default_bounds);
        loadMarkers();
      }
    });
  }

  function loadMarkers() {
    $.ajax({
      url: window.location.pathname + '/todos',
      dataType: 'json',
      success: function(json) {
        console.log(json);

        if ( json.length > 0 ) {
          var bounds = default_bounds;

          _(json).each(function(todo) {
            addMarker(todo.latitude, todo.longitude, todo.name);
            bounds.extend(new google.maps.LatLng(todo.latitude, todo.longitude));
          });

          map.fitBounds(bounds);
        }
      }
    });
  }

    function addMarker(lat, lng, title) {
      var marker = new google.maps.Marker({
        position: new google.maps.LatLng(lat, lng),
        map: map,
        title: title
      });
    }

    function zoomToMarker(lat, lng, title) {
      var bounds = new google.maps.LatLngBounds();
      addMarker(lat, lng, title);
      bounds.extend(new google.maps.LatLng(lat, lng));
      map.fitBounds(bounds);
    }


  $(window).load(initialize());
