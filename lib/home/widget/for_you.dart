import 'package:flutter/material.dart';
import 'package:planty_app_v2/home/widget/for_you_btn.dart';

class ForYou extends StatelessWidget {
  const ForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            const SizedBox(
              width: 713,
              height: 165,
            ),
            Positioned(
              child: Container(
                width: 367,
                height: 165,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                    ),
                    image: DecorationImage(
                        image: AssetImage("assets/images/plantOfDay1.png"),
                        fit: BoxFit.fill)),
              ),
            ),
            Positioned(
              left: 367,
              child: Container(
                width: 337,
                height: 165,
                decoration: const BoxDecoration(
                  color: Color(0xFFD7E6B3),
                ),
              ),
            ),
            Positioned(
              left: 367,
              child: Container(
                width: 386,
                height: 165,
                decoration: const BoxDecoration(
                  color: Color(0xFFD7E6B3),
                ),
              ),
            ),
            const Positioned(
              top: 13,
              left: 17,
              child: Text(
                'ЭНЭ ӨДРИЙН УРГАМАЛ ',
                style: TextStyle(
                  color: Color(0xFF12B32A),
                  fontSize: 12,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            const Positioned(
              top: 30,
              left: 17,
              child: Text(
                'Алое вера',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF084D12),
                  fontSize: 32,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            const Positioned(
              top: 95,
              left: 17,
              child: Icon(
                Icons.arrow_right_alt_outlined,
                size: 30,
              ),
            ),
            const Positioned(
                top: 12,
                left: 387,
                child: Text(
                  'ЗУУН НАСТ-ЫН ИД ШИД БОЛОН АРЧИЛГАА',
                  style: TextStyle(
                    color: Color(0xFF12B32A),
                    fontSize: 12,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                )),
            Positioned(
              top: 35,
              left: 387,
              child: SizedBox(
                width: 310,
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Эмчилгээнд ашигладаг зуун настыг ',
                        style: TextStyle(
                          color: Color(0xFF084D12),
                          fontSize: 12,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: 'Aloe barbadensis Miller ',
                        style: TextStyle(
                          color: Color(0xFF084D12),
                          fontSize: 12,
                          fontFamily: 'Nunito',
                          fontWeight:
                              FontWeight.w700, // Bold text for this part
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text:
                            'гэдэг. Хэдийгээр харахад кактустай төстэй боловч Сараана цэцгийн овогт багтдаг бөгөөд Цөлийн сараана гэж дуудах нь ч бий. Ургаж эхэлсэнээс хойш 3-4 жилийн дараа навчны урт 60 см, өргөн нь 7-9 болж гүйцэд ургаж гүйцдэг бөгөөд навч нь...',
                        style: TextStyle(
                          color: Color(0xFF084D12),
                          fontSize: 12,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Positioned(right: 12, bottom: 12, child: ForYouBtn())
          ],
        ),
      ],
    );
  }
}
