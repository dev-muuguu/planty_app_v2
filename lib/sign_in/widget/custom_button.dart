import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String btnText;
  final bool signIn;
  final Widget navTo;

  const CustomButton(
      {super.key,
      required this.btnText,
      required this.signIn,
      required this.navTo});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => navTo),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor:
              signIn ? const Color(0xFF0C7A41) : const Color(0xFF0B6F1A),
          padding: const EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          minimumSize: const Size(double.infinity, 40),
        ),
        child: Center(
          child: Text(
            btnText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),
      ),
    );
  }
}
