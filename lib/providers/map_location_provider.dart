
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'map_location_provider.g.dart';

@riverpod
class MapLocation extends _$MapLocation {

@override
LatLng build()  {
return  LatLng(-7.2342,110.2532523) ;
}

void setMapLocation(LatLng position){
  state = position;
}

}