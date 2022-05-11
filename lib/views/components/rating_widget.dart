import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({Key? key, required this.rating}) : super(key: key);

  final int rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: List.generate(
            5,
            (index) => Icon(
              index < rating ? Icons.star_rounded : Icons.star_border_rounded,
              color: Colors.yellow,
            ),
          ),
        ),
        const SizedBox(width: 5),
        Text(
          '$rating/5 Reviews',
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey.withOpacity(0.7),
          ),
        ),
      ],
    );
  }
}