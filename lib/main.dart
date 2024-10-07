import 'package:flutter/material.dart';
import 'package:flutter_final/screens/home.dart';
import 'package:flutter_final/screens/login.dart';
import 'package:flutter_final/screens/signup.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}
