import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:motel_booking_app/providers/map_location_provider.dart';
import 'package:motel_booking_app/providers/map_markers_provider.dart';
import 'package:motel_booking_app/widgets/custom_nav_bar.dart';

class MapScreen extends ConsumerWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final mapLocation = ref.watch(mapLocationProvider);
    final mapMarkers = ref.watch(mapMarkersProvider);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading:const BackButton(),
      ),
extendBodyBehindAppBar: true,
      bottomNavigationBar:const  CustomBottomNavBar(
        index: 1,
      ),
      body:  Stack(
        children: [
          GoogleMap(initialCameraPosition: CameraPosition(
            target: mapLocation,
            zoom: 12.5,
          ), markers: mapMarkers.maybeWhen(
            data: (mapMarkers)=> mapMarkers,
              orElse: ()=>{},



          ),
          )
        ],
      ),
    );
  }
}


