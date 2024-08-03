import 'package:flutter/material.dart';

class AdviceItem extends StatelessWidget {
  final String plantPicPath;
  final String adviseLabel;

  const AdviceItem(
      {super.key, required this.plantPicPath, required this.adviseLabel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(
          width: 180,
          height: 112,
        ),
        Positioned(
          child: Container(
            width: 180,
            height: 80,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage(plantPicPath), //!
                fit: BoxFit.cover,
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
            ),
          ),
        ),
        Positioned(
            top: 80,
            child: Container(
                alignment: Alignment.center,
                width: 180,
                height: 32,
                decoration: const ShapeDecoration(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                ),
                child: Text(
                  adviseLabel, //!
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                )))
      ],
    );
  }
}
