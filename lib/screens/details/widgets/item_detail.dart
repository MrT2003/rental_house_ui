import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rental_house_ui/constants.dart';

class itemDetail extends StatelessWidget {
  const itemDetail({
    super.key,
    required this.image,
    required this.text,
  });

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          SvgPicture.asset(image, height: 30),
          SizedBox(
            width: 15,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 14,
              color: bodyTextColor,
            ),
          )
        ],
      ),
    );
  }
}
