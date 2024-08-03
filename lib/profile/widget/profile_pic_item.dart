import 'package:flutter/material.dart';

class ProfilePicItem extends StatelessWidget {
  const ProfilePicItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 16),
        child:
            // InkWell(
            //   child: Image.asset(
            //     "assets/images/profilePic.png",
            //     scale: 0.8,
            //   ),
            //   onTap: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => const ProfileScreen()));
            //   },
            // ),
            Container(
          width: 32,
          height: 32,
          decoration: const ShapeDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/profilePic.png"),
              fit: BoxFit.cover,
            ),
            shape: OvalBorder(
              side: BorderSide(width: 1, color: Color(0xFF16E079)),
            ),
          ),
        ));
  }
}
