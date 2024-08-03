import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String categoryPlantPic;
  final String categoryLabel;

  const CategoryItem({
    super.key,
    required this.categoryPlantPic,
    required this.categoryLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 151,
      height: 146,
      padding: const EdgeInsets.only(left: 20, top: 20),
      decoration: ShapeDecoration(
        image: DecorationImage(
          image: AssetImage(categoryPlantPic),
          fit: BoxFit.cover,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            categoryLabel,
            style: const TextStyle(
              color: Color(0xFF0C7A41),
              fontSize: 18,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w700,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }
}
