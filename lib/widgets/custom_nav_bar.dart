import 'package:flutter/material.dart';
import 'package:motel_booking_app/screens/homescreen.dart';

import '../screens/map_screen.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({required this.index, super.key});
  final int index;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.only(
        top:10,left: 20,right: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _NavBarIcon(
              isSelected: index==0,
                icon: Icons.home,
                text: 'Home',
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                }),
            _NavBarIcon(
              isSelected: index==1,
                icon: Icons.map,
                text: 'Map',
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) =>const  MapScreen()),
                  );
                }),
            _NavBarIcon(
                isSelected: index==2,
                icon: Icons.shopping_basket_outlined,
                text: 'Booking',

                ),
            _NavBarIcon(
              isSelected: index==3,
              icon: Icons.person,
              text: 'Profile',

            ),
          ],
        ),
      ),
    );
  }
}



class _NavBarIcon extends StatelessWidget {
  const _NavBarIcon({
    required this.icon,
    required this.text,
    this.onTap,
    this.isSelected = false,
    super.key,
  });

  final IconData icon;
  final String text;
  final Function()? onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final color = isSelected ? Colors.pink : Colors.green;

    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: color,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
