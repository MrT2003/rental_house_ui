import 'package:flutter/material.dart';
import 'package:rental_house_ui/constants.dart';
import 'package:rental_house_ui/model/house.dart';
import 'package:rental_house_ui/screens/details/widgets/item_detail.dart';

class HouseInfo extends StatelessWidget {
  const HouseInfo({
    super.key,
    required this.rent,
  });

  final House rent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          rent.name,
          style: TextStyle(
            color: titleTextColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 7),
        Text(
          rent.address,
          style: TextStyle(
            color: titleTextColor,
            fontSize: 15,
          ),
        ),
        SizedBox(height: 15),
        Text(
          '5000 sqf',
          style: TextStyle(
            color: titleTextColor,
            fontSize: 15,
          ),
        ),
        SizedBox(height: 6),
        Text.rich(
          TextSpan(children: [
            TextSpan(
              text: rent.price,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(text: ' Per month'),
          ]),
        ),
        Column(
          children: [
            Row(
              children: [
                itemDetail(
                    image: 'assets/icons/bedroom.svg',
                    text: '5 Bathroom \n3 Master Bedroom'),
                itemDetail(
                    image: 'assets/icons/bathroom.svg',
                    text: '5 Bathroom \n3 Toilet'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                itemDetail(
                    image: 'assets/icons/bedroom.svg',
                    text: '2 Ketchen \n120 sqft'),
                itemDetail(
                    image: 'assets/icons/parking.svg',
                    text: '2 Parking \n180 sqft'),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
