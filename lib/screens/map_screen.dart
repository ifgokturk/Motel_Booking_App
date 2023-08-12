import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:motel_booking_app/widgets/custom_nav_bar.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading:const BackButton(),
      ),

      bottomNavigationBar:const  CustomBottomNavBar(
        index: 1,
      ),
      body: const Stack(
        children: [
          GoogleMap(initialCameraPosition: CameraPosition(
            target: LatLng(
              -7.79,110.36
            ),zoom: 12.5,
          ), markers: {},
          )
        ],
      ),
    );
  }
}


