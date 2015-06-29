Geocoder.configure(:lookup => :test)

Geocoder::Lookup::Test.set_default_stub(
   [
    {
      'latitude'     => 40.7143528,
      'longitude'    => -74.0059731,
    }
  ]
)

Geocoder::Lookup::Test.add_stub(
  'Kuala Lumpur', [
      {"address_components"=>
  [{"long_name"=>"Kuala Lumpur",
    "short_name"=>"Kuala Lumpur",
    "types"=>["locality", "political"]},
   {"long_name"=>"Federal Territory of Kuala Lumpur",
    "short_name"=>"Federal Territory of Kuala Lumpur",
    "types"=>["administrative_area_level_1", "political"]},
   {"long_name"=>"Malaysia",
    "short_name"=>"MY",
    "types"=>["country", "political"]}],
 "formatted_address"=>
  "Kuala Lumpur, Federal Territory of Kuala Lumpur, Malaysia",
 "geometry"=>
  {"bounds"=>
    {"northeast"=>{"lat"=>3.245252, "lng"=>101.758509},
     "southwest"=>{"lat"=>3.0327539, "lng"=>101.6152019}},
   "location"=>{"lat"=>3.139003, "lng"=>101.686855},
   "location_type"=>"APPROXIMATE",
   "viewport"=>
    {"northeast"=>{"lat"=>3.245252, "lng"=>101.758509},
     "southwest"=>{"lat"=>3.0327539, "lng"=>101.6152019}}},
 "place_id"=>"ChIJ5-rvAcdJzDERfSgcL1uO2fQ",
 "types"=>["locality", "political"]}
] )


Geocoder::Lookup::Test.add_stub(
  'Albacete', [
{"address_components"=>
  [{"long_name"=>"Albacete",
    "short_name"=>"Albacete",
    "types"=>["locality", "political"]},
   {"long_name"=>"Albacete",
    "short_name"=>"Albacete",
    "types"=>["administrative_area_level_4", "political"]},
   {"long_name"=>"Llanos de Albacete",
    "short_name"=>"Llanos de Albacete",
    "types"=>["administrative_area_level_3", "political"]},
   {"long_name"=>"Albacete",
    "short_name"=>"Albacete",
    "types"=>["administrative_area_level_2", "political"]},
   {"long_name"=>"Castilla-La Mancha",
    "short_name"=>"CM",
    "types"=>["administrative_area_level_1", "political"]},
   {"long_name"=>"Spain",
    "short_name"=>"ES",
    "types"=>["country", "political"]}],
 "formatted_address"=>"Albacete, Albacete, Spain",
 "geometry"=>
  {"bounds"=>
    {"northeast"=>{"lat"=>39.0129156, "lng"=>-1.834899},
     "southwest"=>{"lat"=>38.9714828, "lng"=>-1.8862798}},
   "location"=>{"lat"=>38.994349, "lng"=>-1.8585424},
   "location_type"=>"APPROXIMATE",
   "viewport"=>
    {"northeast"=>{"lat"=>39.0129156, "lng"=>-1.834899},
     "southwest"=>{"lat"=>38.9714828, "lng"=>-1.8862798}}},
 "place_id"=>"ChIJFY0h--JfZg0RgGEY1jHNaYI",
 "types"=>["locality", "political"]}
 ])
