import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpCode extends StatelessWidget {
  final String separator; // Separator text
  final bool showSeparator; // Flag to conditionally show separator

  const OtpCode({
    super.key,
    required this.separator,
    this.showSeparator = true, // Default to showing separator
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 50,
          width: 44,
          child: TextField(
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(1),
            ],
            style: const TextStyle(
              color: Colors.black,
              fontSize: 32,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.only(left: 12, top: 10),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              filled: true,
              fillColor: Colors.white,
              border: InputBorder.none,
            ),
          ),
        ),
        showSeparator
            ? const SizedBox(width: 0) // Space between TextField and separator
            : const SizedBox.shrink(), // No space if separator is not shown
        showSeparator
            ? Text(
                separator,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              )
            : const SizedBox.shrink(), // No separator text if not shown
      ],
    );
  }
}
