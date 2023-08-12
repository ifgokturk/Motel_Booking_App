
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../models/hotel_model.dart';
import 'custom_rating.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({required this.hotels, super.key});

  final HotelModel hotels;

  @override
  Widget build(BuildContext context) {
    return Container(
      //  height: 150,
      margin: const EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.orange),
        color: Colors.white60,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Flexible(
              flex: 1,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                child: Image.asset(
                    fit: BoxFit.cover,
                    //  'assets/aqu.png',
                    hotels.thumbnailPath),
              )),
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    hotels.title,
                    maxLines: 2,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.location_on),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        hotels.location,
                        maxLines: 2,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 12,
                          //  fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  CustomRating(ratingScore: hotels.ratingScore,),
                  const SizedBox(height: 10,),
                  RichText(text: TextSpan(
                    children: [
                      TextSpan(style: const TextStyle(
                          color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold
                      ),
                        text: '\$${hotels.price}',
                        recognizer:
                        TapGestureRecognizer()..onTap = () => print('Tap Here onTap'),
                      )
                    ],
                  ),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
