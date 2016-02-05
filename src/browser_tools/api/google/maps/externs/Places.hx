package browser_tools.api.google.maps.externs;


typedef Request = {
  ?location: Dynamic,
  ?types: Array<String>,
  ?radius: Int
}


typedef MapOptions = {
  ?mapTypeId: Dynamic,
  ?center: Location,
  ?zoom: Int
}

typedef MarkerOptions = {
    map:Map,
    position: Location
}


typedef Result = {
  geometry:{
    location:Location
  },
  scope: String,
  icon:String,
  id:String,
  name:String,
  place_id:String,
  reference:String,
  vicinity: String
}

typedef Results = Array<Result>;


@:native("google.maps.LatLng")
extern class Location {
  public function new(x:Float,y:Float) {}
}


@:native("google.maps.Map")
extern class Map {
  public function new(element:js.html.Element,options:MapOptions) {}
}


@:native("google.maps.Marker")
extern class Marker {
  public function new(options:MarkerOptions) {}
}


@:native("google.maps.places.PlacesService")
extern class Places {
  public function new(map:Map) {}
  public function nearbySearch(request:Request,cb:Results->Dynamic->Void):Void {}
}


/*(function () {

    SearchPlaceMap = {
        init: function () {
            var self = this;
            var location = new google.maps.LatLng(45.465736,9.1922913);

            self.map = new google.maps.Map(document.getElementById('map-canvas'), {
                mapTypeId: google.maps.MapTypeId.ROADMAP,
                center: location,
                zoom: 15
            });


            var request = {
                location: location,
                radius: 500,
                types: ['park']
            };

            self.infowindow = new google.maps.InfoWindow();
            var service = new google.maps.places.PlacesService(self.map);
            service.nearbySearch(request, function (results, status) {
                if (status == google.maps.places.PlacesServiceStatus.OK) {
                    for (var i = 0; i < results.length; i++) {
                        self.createMarker(results[i]);
                    }
                }
            });
        },

        createMarker: function (place) {
            var self = this;
            var placeLoc = place.geometry.location;
            var marker = new google.maps.Marker({
                map: self.map,
                position: place.geometry.location
            });

            google.maps.event.addListener(marker, 'click', function () {
                self.infowindow.setContent(place.name);
                self.infowindow.open(self.map, this);
            });
        }
    }

    SearchPlaceMap.init();

})($);
*/
