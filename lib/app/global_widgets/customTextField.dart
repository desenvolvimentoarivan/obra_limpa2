import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final bool password;
  final Function(String)? change;
  final String errorText;
  final TextInputType? keyboardType;
  final controller;
  final inputFormatters;

  const CustomTextField(
      {Key? key,
      this.hint = '',
      this.password = false,
      this.change,
      this.errorText = '',
      this.keyboardType,
      this.controller,
      this.inputFormatters})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: change,
      controller: controller,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      obscureText: password,
      decoration: InputDecoration(
        errorText: errorText,
        hintText: hint,
        contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
        isDense: true,
      ),
      style: TextStyle(
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
