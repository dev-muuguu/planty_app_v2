import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyGarderItem extends StatelessWidget {
  const MyGarderItem({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Column(
      children: [
        Container(
          width: 336,
          height: 88,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 4,
                blurRadius: 10,
                offset: const Offset(0, 4), // Shadow offset
              ),
            ],
            border: Border.all(
              color: Colors
                  .transparent, // Transparent border to keep the space for shadow
              width: 2,
            ),
          ),
          child: SizedBox(
            width: 336,
            height: 88,
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Stack(children: [
                Positioned(
                  top: 5,
                  left: 8,
                  child: Container(
                    width: 52,
                    height: 52,
                    decoration: const ShapeDecoration(
                      shape: OvalBorder(
                        side: BorderSide(width: 1, color: Color(0xFF35383E)),
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/images/myGardenItem1.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Positioned(
                  top: 2,
                  left: 5,
                  child: SvgPicture.asset(
                    'assets/images/circleFrame.svg',
                    width: 58,
                    height: 58,
                  ),
                ),
                const Positioned(
                    top: 20,
                    left: 75,
                    child: Text(
                      'Bleeding Hearth Vine',
                      style: TextStyle(
                        color: Color(0xFF0C781C),
                        fontSize: 18,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    )),
                const Positioned(
                    left: 264,
                    child: Icon(
                      Icons.more_horiz,
                      size: 32,
                      color: Color(0xFFD9D9D9),
                    ))
              ]),
            ),
          ),
        ),
        Container(
          width: 335,
          decoration: const ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                strokeAlign: BorderSide.strokeAlignCenter,
                color: Color(0xFFD9D9D9),
              ),
            ),
          ),
        ),
        Container(
          width: 336,
          height: 48,
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 4,
                blurRadius: 10,
                offset: const Offset(0, 4), // Shadow offset
              ),
            ],
            border: Border.all(
              color: Colors
                  .transparent, // Transparent border to keep the space for shadow
              width: 2,
            ),
          ),
          child: SizedBox(
            width: 336,
            height: 48,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Stack(
                children: [
                  // !!!!!!!!!!!!!!!!!!
                  Positioned(
                    child: Image.asset(
                      'assets/images/water.png',
                      width: 50,
                      height: 50,
                      fit: BoxFit.contain,
                    ),
                  )
                  // !!!!!!!!!!!!!!!!!!
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
