import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      margin: EdgeInsets.only(bottom: 25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              // Độ lan bóng
              spreadRadius: 1,
              // Độ mờ bóng
              blurRadius: 7,
              // Hướng di chuyển của bóng
              offset: Offset(0, 3),
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.home,
            size: 30,
          ),
          Icon(
            Icons.search,
            size: 30,
          ),
          SvgPicture.asset("assets/icons/notification.svg"),
          SvgPicture.asset("assets/icons/chat.svg"),
          SvgPicture.asset("assets/icons/home_mark.svg"),
        ],
      ),
    );
  }
}
