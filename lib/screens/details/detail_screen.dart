import 'package:flutter/material.dart';
import 'package:rental_house_ui/constants.dart';
import 'package:rental_house_ui/model/house.dart';
import 'package:rental_house_ui/screens/details/widgets/detail_image.dart';
import 'package:rental_house_ui/screens/details/widgets/house_info.dart';
import 'package:rental_house_ui/screens/details/widgets/item_detail.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.rent});
  final House rent;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              detaiImage(rent: rent),
              SizedBox(height: 20),
              HouseInfo(rent: rent),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: titleTextColor,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      rent.description,
                      style: TextStyle(
                        fontSize: 16,
                        color: bodyTextColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // ElevatedButton(
              //   onPressed: () => null,
              //   child: Text(
              //     "Book Now",
              //     style: TextStyle(
              //         fontWeight: FontWeight.bold,
              //         color: Colors.white,
              //         fontSize: 18),
              //   ),
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: primaryColor,
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //   ),
              // ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10)),
                height: 45,
                alignment: Alignment.center,
                child: const Text(
                  "Book Now",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
