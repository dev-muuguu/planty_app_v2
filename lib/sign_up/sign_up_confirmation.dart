import 'package:flutter/material.dart';
import 'package:planty_app_v2/bottom%20tabbar%20screen/bottom_tab_bar_screen.dart';
import 'package:planty_app_v2/sign_in/widget/custom_button.dart';
import 'package:planty_app_v2/sign_up/widget/otp_code.dart';

class SignUpConfirmation extends StatefulWidget {
  const SignUpConfirmation({super.key});

  @override
  State<SignUpConfirmation> createState() => _SignUpConfirmationState();
}

class _SignUpConfirmationState extends State<SignUpConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF12B32A),
        body: Column(children: [
          const SizedBox(
            height: 60,
          ),
          Container(
            width: double.infinity,
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/logo.png'),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            mainAxisAlignment:
                MainAxisAlignment.center, // Center contents horizontally
            children: [
              OtpCode(separator: '-'),
              OtpCode(separator: '-'),
              OtpCode(separator: '-'),
              OtpCode(separator: '-'),
              OtpCode(
                separator: '-',
                showSeparator: false,
              ),
            ],
          ),
          const SizedBox(
            height: 14,
          ),
          const SizedBox(
            width: 322,
            height: 73,
            child: Text(
              'Таны бүртгүүлсэн утсаны дугаар дээр мэссэжээр ирсэн 5 орон бүхий дугаарыг хийнэ үү.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          // ignore: prefer_const_constructors

          const SizedBox(
            height: 14,
          ),
          const SizedBox(
            width: 322,
            child: CustomButton(
                btnText: 'Баталгаажуулах',
                signIn: false,
                navTo: BottomTabBarScreen()),
          )
        ]));
  }
}
