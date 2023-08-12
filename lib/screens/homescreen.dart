import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:motel_booking_app/providers/all_hotels_provider.dart';
import 'package:motel_booking_app/widgets/custom_icon_button.dart';
import 'package:motel_booking_app/widgets/custom_text_field.dart';

import '../models/hotel_model.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_nav_bar.dart';
import '../widgets/custom_rating.dart';
import '../widgets/hotel_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue,
      bottomNavigationBar: const CustomBottomNavBar(index:0),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              margin: EdgeInsets.only(top: size.height * 0.25),
              color: Colors.white
              ,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _HeaderScreen(),
                    _SearchCard(),
                    SizedBox(
                      height: 20,
                    ),
                    _NearbyHotels(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _HeaderScreen extends StatelessWidget {
  const _HeaderScreen();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/1.png'),
            ),
            CustomIconButton(
              icon: Icon(Icons.notifications),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Welcome Back',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class _SearchCard extends StatelessWidget {
  const _SearchCard();

  @override
  Widget build(BuildContext context) {
    final locationTextController = TextEditingController();
    final dateFromTextController = TextEditingController();
    final dateToTextController = TextEditingController();

    locationTextController.text = 'singapore';
    dateFromTextController.text = dateToTextController.text =
        DateFormat('dd MMM yyyy').format(DateTime.now());

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.location_on, color: Colors.blue),
              const SizedBox(
                width: 20,
              ),
              CustomTextField(
                controller: locationTextController,
                label: const Text('Where'),
              ),
            ],
          ),
          const Divider(),
          Row(
            children: [
              const Icon(Icons.calendar_month, color: Colors.blue),
              const SizedBox(
                width: 20,
              ),
              CustomTextField(
                controller: dateFromTextController,
                label: const Text('From'),
              ),
              CustomTextField(
                controller: dateToTextController,
                label: const Text('to'),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomButton(text: 'Search'),
        ],
      ),
    );
  }
}

class _NearbyHotels extends ConsumerWidget {
  const _NearbyHotels({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hotels = ref.watch(allHotelsProvider);
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Nearby Hotels',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
            ),
            Text(
              'See All',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.blue,
            ),
            ),
          ],
        ),
        hotels.when(
          error: (error, stackTrace) => Text('Error :  $error'),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          data: (hotels) {
            return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: hotels.length,
                itemBuilder: (context, index) {
                  return HotelCard(hotels: hotels[index]);
                });
          },
        ),
      ],
    );
  }
}
