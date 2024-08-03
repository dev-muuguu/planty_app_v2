import 'package:flutter/material.dart';
import 'package:planty_app_v2/bottom%20tabbar%20screen/bottom_tab_bar_screen.dart';

class ForYouBtn extends StatelessWidget {
  const ForYouBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const BottomTabBarScreen()),
        );
      },
      borderRadius: BorderRadius.circular(50), // Match the border radius
      splashColor: Colors.green.withOpacity(0.2), // Customize the ripple color
      child: Container(
        padding: const EdgeInsets.only(left: 8),
        width: 100,
        height: 25,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 1,
            color: const Color(0xFF226026),
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'цааш унших',
              style: TextStyle(
                color: Color(0xFF084D12),
                fontSize: 10,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            Icon(Icons.arrow_right_rounded),
          ],
        ),
      ),
    );
  }
}
