import 'package:flutter/material.dart';
import 'package:planty_app_v2/bottom%20tabbar%20screen/bottom_tab_bar_screen.dart';
import 'package:planty_app_v2/sign_in/widget/custom_button.dart';
import 'package:planty_app_v2/sign_in/widget/custom_text_field.dart';
import 'package:planty_app_v2/sign_up/sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF12B32A),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  children: [
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
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 51, right: 51),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Нэвтрэх нэр',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const CustomTextField(
                                label: 'нэвтрэх нэр', isPassword: false),
                            const SizedBox(height: 12),
                            const Text(
                              'Нууц үг',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const CustomTextField(
                                label: 'нууц үг', isPassword: true),
                            const SizedBox(
                              height: 8,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {
                                  // Define your onPressed functionality here
                                },
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  alignment: Alignment.centerRight,
                                  splashFactory: NoSplash.splashFactory,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  visualDensity: VisualDensity.compact,
                                ),
                                child: const Text(
                                  'нууц үг мартсан?',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w400,
                                    height: 1,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            const CustomButton(
                                btnText: 'НЭВТРЭХ',
                                signIn: true,
                                navTo: BottomTabBarScreen()),
                            const SizedBox(
                              height: 40,
                              child: Center(
                                child: Text(
                                  'эсвэл',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                            const CustomButton(
                                btnText: 'БҮРТГҮҮЛЭХ',
                                signIn: false,
                                navTo: SignUpScreen()),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
