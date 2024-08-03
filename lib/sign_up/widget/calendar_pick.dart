import 'package:flutter/material.dart';

class CalendarPick extends StatefulWidget {
  final String textLabel;
  final String label;

  const CalendarPick({
    super.key,
    required this.textLabel,
    required this.label,
  });

  @override
  _CalendarPickState createState() => _CalendarPickState();
}

class _CalendarPickState extends State<CalendarPick> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;
  DateTime? _selectedDate;

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

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
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
          height: 4,
        ),
        SizedBox(
          width: double.infinity,
          child: GestureDetector(
            onTap: () => _selectDate(context),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              decoration: BoxDecoration(
                color: _isFocused ? Colors.white : const Color(0xFFD1E8DB),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                _selectedDate == null
                    ? widget.label
                    : "${_selectedDate!.toLocal()}".split(' ')[0],
                style: const TextStyle(
                  color: Color(0xFF95BFA7),
                  fontSize: 12,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
