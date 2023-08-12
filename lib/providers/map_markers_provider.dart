

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:motel_booking_app/repositories/hotel_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'map_markers_provider.g.dart';

@riverpod
class MapMarkers extends _$MapMarkers{

  @override
   Future<Set<Marker>> build() async {
    final HotelRepository hotelRepository = ref.watch(hotelRepositoryProvider);

    Set<Marker> markers = (
        await hotelRepository.getHotels()).map((hotel)

   {
     return Marker(
     markerId: MarkerId(hotel.id.toString()),
   position: hotel.coordinate,
     );

   }

    ).toSet();
    return markers;

  }

}