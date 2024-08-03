import 'package:flutter/material.dart';
import 'package:planty_app_v2/home/widget/category_item.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    // List of categories with image paths and labels
    final List<Map<String, String>> categories = [
      {
        'image': 'assets/images/categoryPlant1.png',
        'label': 'Цэцгэлдэг   ургамал',
      },
      {
        'image': 'assets/images/categoryPlant2.png',
        'label': 'Сукулент,   кактус',
      },
      {
        'image': 'assets/images/categoryPlant3.png',
        'label': 'Жимсэлдэг   ургамал',
      },
      {
        'image': 'assets/images/categoryPlant4.png',
        'label': 'Эмийн    ургамал',
      },
      {
        'image': 'assets/images/categoryPlant5.png',
        'label': 'Хүнсний   ургамал',
      },
      {
        'image': 'assets/images/categoryPlant1.png',
        'label': 'Цэцгэлдэг   ургамал',
      },
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: categories.length,
      itemBuilder: (BuildContext context, int index) {
        return CategoryItem(
          categoryPlantPic: categories[index]['image']!,
          categoryLabel: categories[index]['label']!,
        );
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 1,
      ),
    );
  }
}
