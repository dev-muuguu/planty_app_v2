import 'package:flutter/material.dart';
import 'package:planty_app_v2/sign_in/widget/custom_button.dart';
import 'package:planty_app_v2/sign_up/widget/calendar_pick.dart';
import 'package:planty_app_v2/sign_up/widget/custom_text_input.dart';
import 'package:planty_app_v2/sign_up/sign_up_confirmation.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 51, right: 51),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextInput(
                              textLabel: 'Овог',
                              label: 'овог',
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            CustomTextInput(textLabel: 'Нэр', label: 'нэр'),
                            SizedBox(
                              height: 8,
                            ),
                            CalendarPick(
                                textLabel: 'Төрсөн огноо',
                                label: 'өдөр / сар / жил'),
                            SizedBox(
                              height: 8,
                            ),
                            CustomTextInput(
                                textLabel: 'Утасны дугаар',
                                label: 'утасны дугаар'),
                            SizedBox(
                              height: 8,
                            ),
                            CustomTextInput(
                                textLabel: 'И-Мэйл хаяг', label: 'и-мэйл хаяг'),
                            SizedBox(
                              height: 8,
                            ),
                            CustomButton(
                                btnText: 'Баталгаажуулах',
                                signIn: false,
                                navTo: SignUpConfirmation()),
                            SizedBox(
                              height: 8,
                            ),
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
