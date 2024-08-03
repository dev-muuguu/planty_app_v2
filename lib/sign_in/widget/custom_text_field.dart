import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final bool isPassword;

  const CustomTextField({
    super.key,
    required this.label,
    required this.isPassword,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
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
    return SizedBox(
      width: double.infinity,
      child: TextField(
        focusNode: _focusNode,
        obscureText: widget.isPassword,
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
    );
  }
}
