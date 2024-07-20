import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rental_house_ui/constants.dart';
import 'package:rental_house_ui/model/house.dart';

class detaiImage extends StatelessWidget {
  const detaiImage({
    super.key,
    required this.rent,
  });

  final House rent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Stack(
        children: [
          Hero(
            tag: rent.imageUrl,
            child: Image.asset(
              rent.imageUrl,
              fit: BoxFit.cover,
              height: double.infinity,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_circle_left_sharp,
                      color: Colors.white70,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset("assets/icons/mark.svg"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
