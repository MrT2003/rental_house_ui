import 'package:flutter/material.dart';
import 'package:rental_house_ui/constants.dart';

class IntroductionText extends StatelessWidget {
  const IntroductionText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello Raihan',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black45,
            ),
          ),
          Text(
            'Find your sweet Home',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: titleTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
