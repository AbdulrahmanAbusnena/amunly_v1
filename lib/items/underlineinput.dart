import 'package:flutter/material.dart';

class Underlineinput extends StatefulWidget {
  final String label;
  final bool obscureText;
  const Underlineinput({
    super.key,
    required this.label,
    this.obscureText = false,
  });

  @override
  State<Underlineinput> createState() => _UnderlineinputState();
}

class _UnderlineinputState extends State<Underlineinput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscureText,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        labelText: widget.label,
        labelStyle: const TextStyle(color: Colors.grey),
        floatingLabelStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1.5),
        ),
      ),
    );
  }
}
