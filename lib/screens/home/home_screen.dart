import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rental_house_ui/constants.dart';
import 'package:rental_house_ui/widgets/bottom_nav_bar.dart';
import 'package:rental_house_ui/widgets/introduction_text.dart';
import 'package:rental_house_ui/widgets/my_search_bar.dart';
import 'package:rental_house_ui/widgets/profile_and_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileAndMenu(),
            IntroductionText(),
            MySearchBar(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
