import 'package:flutter/material.dart';
import 'package:flutter_final/myColor.dart';

final ButtonStyle myButton = ElevatedButton.styleFrom(
          backgroundColor: myColor,
          foregroundColor: Colors.white, // Text color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Border radius
          ),
        ).copyWith(
  backgroundColor: WidgetStateProperty.resolveWith<Color?>(
        (Set<WidgetState> states) {
      if (states.contains(WidgetState.pressed)) {
        return Colors.blue.shade900; // Color when pressed
      }
      return myColor; // Default color
    },
  ),
);

