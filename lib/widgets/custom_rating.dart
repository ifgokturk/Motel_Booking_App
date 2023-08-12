
import 'package:flutter/material.dart';

class CustomRating extends StatelessWidget {
  const CustomRating({
    required this.ratingScore,
    this.totalReviews = 0,
    this.showReview = false,
    super.key,
  });

  final double ratingScore;
  final int totalReviews;
  final bool showReview;

  @override
  Widget build(BuildContext context) {
    const size =15.0;
    return Row(
      children: [

        for(int i=1;i<=5;i++)
          Container(
            margin:const EdgeInsets.all(1.0),
            height: size,width: size,
            decoration: BoxDecoration(
                color: i<=ratingScore ? Colors.yellow :Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.yellow,width: 2.0)
            ),
          ),
        const SizedBox(width: 10,),
        Text(
          '$ratingScore',
          maxLines: 2,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontSize: 12,
            //  fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
