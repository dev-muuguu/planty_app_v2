import 'package:flutter/material.dart';
import 'package:planty_app_v2/home/widget/advice_item.dart';
import 'package:planty_app_v2/home/widget/category_section.dart';
import 'package:planty_app_v2/home/widget/for_you.dart';
import 'package:planty_app_v2/home/widget/search_section.dart';
import 'package:planty_app_v2/profile/widget/profile_pic_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 200,
        leading: const Padding(
          padding: EdgeInsets.only(left: 16, top: 12),
          child: Text(
            'Hi, Muuguu!',
            style: TextStyle(
              color: Color(0xFF0C781C),
              fontSize: 24,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),
        actions: const [ProfilePicItem()],
        elevation: 0,
      ),
      body: Column(
        children: [
          const SearchSection(),
          const SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 335,
                    height: 24,
                    padding: const EdgeInsets.only(left: 20),
                    child: const Row(
                      children: [
                        Text(
                          'Зөвөлгөө',
                          style: TextStyle(
                            color: Color(0xFF0C781C),
                            fontSize: 12,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 4, //! хэмжээг өөрчлөв
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        AdviceItem(
                          plantPicPath: 'assets/images/plant1.png',
                          adviseLabel: 'Ургамлыг хэрхэн таних вэ?',
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        AdviceItem(
                          plantPicPath: 'assets/images/plant2.png',
                          adviseLabel: 'Ургамлыг хэрхэн таних вэ?',
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        AdviceItem(
                          plantPicPath: 'assets/images/plant3.png',
                          adviseLabel: 'Ургамлыг хэрхэн таних вэ?',
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        AdviceItem(
                          plantPicPath: 'assets/images/plant4.png',
                          adviseLabel: 'Ургамлыг хэрхэн таних вэ?',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: 335,
                    height: 24,
                    padding: const EdgeInsets.only(left: 20),
                    child: const Row(
                      children: [
                        Text(
                          'Таны сонирхолд',
                          style: TextStyle(
                            color: Color(0xFF0C781C),
                            fontSize: 12,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: ForYou(),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 335,
                    height: 24,
                    padding: const EdgeInsets.only(left: 20),
                    child: const Row(
                      children: [
                        Text(
                          'Категори',
                          style: TextStyle(
                            color: Color(0xFF0C781C),
                            fontSize: 12,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CategorySection(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
