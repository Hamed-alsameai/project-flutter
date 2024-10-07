import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final TextInputType inputTypee;
  final bool isPass;
  final String lableTextt;

  const MyTextfield({
    super.key,
    required this.inputTypee,
    required this.isPass,
    required this.lableTextt,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputTypee,
      obscureText: isPass,
      cursorColor: Colors.grey.shade600,
      decoration: InputDecoration(
        labelText: lableTextt,
        labelStyle: TextStyle(
          color: Colors.grey.shade700, // Change label color
          fontSize: 15, // Change label font size
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(8)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        contentPadding: EdgeInsets.all(12),
      ),
    );
  }
}
