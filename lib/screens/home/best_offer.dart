import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rental_house_ui/constants.dart';

class BestOffer extends StatelessWidget {
  const BestOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Best Offer',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: titleTextColor,
                ),
              ),
              Text(
                'See All',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black45,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.purple.shade100,
            ),
            child: Stack(
              children: [
                Row(
                  children: [
                    Container(
                      height: 70,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/best_house.jpeg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'The Moon House',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'P455, Chhatak, Sylhet',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black26,
                    ),
                    child: SvgPicture.asset("assets/icons/heart.svg"),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
