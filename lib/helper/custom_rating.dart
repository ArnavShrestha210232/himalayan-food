import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Rating_Builder extends StatelessWidget {
  final double itemSize;
  final EdgeInsetsGeometry itemPadding;
  const Rating_Builder({
    super.key,
    required this.itemSize,
    required this.itemPadding,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
        itemSize: itemSize,
        initialRating: 3.5,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemPadding: itemPadding,
        itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
        onRatingUpdate: (rating) {
          print(rating);
        });
  }
}

//25  EdgeInsets.symmetric(horizontal: 4.0),