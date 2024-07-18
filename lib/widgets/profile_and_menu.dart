import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileAndMenu extends StatelessWidget {
  const ProfileAndMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset("assets/icons/menu.svg"),
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile.png"),
          ),
        ],
      ),
    );
  }
}
