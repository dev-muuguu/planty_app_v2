import 'package:flutter/material.dart';

class CustomTextInput extends StatefulWidget {
  final String textLabel;
  final String label;

  const CustomTextInput({
    super.key,
    required this.textLabel,
    required this.label,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextInputState createState() => _CustomTextInputState();
}

class _CustomTextInputState extends State<CustomTextInput> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.textLabel, // Accessing the textLabel property
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        SizedBox(
          width: double.infinity,
          child: TextField(
            focusNode: _focusNode,
            obscureText: false,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 24),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                borderSide: BorderSide.none,
              ),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              labelText: widget.label,
              labelStyle: const TextStyle(
                color: Color(0xFF95BFA7),
                fontSize: 12,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
              filled: true,
              fillColor: _isFocused ? Colors.white : const Color(0xFFD1E8DB),
            ),
          ),
        )
      ],
    );
  }
}
