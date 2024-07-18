import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rental_house_ui/constants.dart';
import 'package:rental_house_ui/model/house.dart';

class Toprecommended extends StatelessWidget {
  const Toprecommended({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 345,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: recommendedList.length,
          itemBuilder: (context, index) {
            final rent = recommendedList[index];
            return GestureDetector(
              onTap: () => null,
              child: Container(
                margin: EdgeInsets.only(left: 20),
                padding: EdgeInsets.all(10),
                height: 300,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Hero(
                      tag: rent.imageUrl,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(rent.imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.white30,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    rent.name,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: titleTextColor,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    rent.address,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: titleTextColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            circularBox("assets/icons/heart.svg"),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        right: 15,
                        top: 15,
                        child: circularBox("assets/icons/mark.svg")),
                  ],
                ),
              ),
            );
          }),
    );
  }

  circularBox(image) {
    return Container(
      height: 25,
      width: 25,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: secondaryColor,
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(image),
    );
  }
}
