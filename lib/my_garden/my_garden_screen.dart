import 'package:flutter/material.dart';
import 'package:planty_app_v2/bottom%20tabbar%20screen/bottom_tab_bar_screen.dart';
import 'package:planty_app_v2/my_garden/widget/my_garder_item.dart';
// import 'package:planty_app_v2/profile/widget/profile_pic_item.dart';

class MyGardenScreen extends StatelessWidget {
  const MyGardenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 250,
          leading: const Padding(
            padding: EdgeInsets.only(left: 20, top: 12),
            child: Text(
              'Миний цэцэрлэг',
              style: TextStyle(
                color: Color(0xFF0C781C),
                fontSize: 24,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
          // actions: const [ProfilePicItem()],
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Ургамлууд'),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BottomTabBarScreen()),
                        );
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        splashFactory: NoSplash.splashFactory,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        visualDensity: VisualDensity.compact,
                      ),
                      child: const Text(
                        'НЭМЭХ',
                        style: TextStyle(
                          color: Color(0xFF0B6F1A),
                          fontSize: 16,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w900,
                          height: 0,
                        ),
                      )),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              const MyGarderItem()
            ],
          ),
        ));
  }
}
