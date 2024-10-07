import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_final/myWidgets/my_TextField.dart';
import 'package:flutter_final/screens/signup.dart';

import '../myVariables/my_Button.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text('Login', style:  TextStyle(fontSize:30,fontWeight:FontWeight.bold),),
                  SizedBox(
                    height: 80,
                  ),
                  MyTextfield(
                    inputTypee: TextInputType.emailAddress,
                    isPass: false,
                    lableTextt: "Email",
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MyTextfield(
                    inputTypee: TextInputType.text,
                    isPass: true,
                    lableTextt: "Password",
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                          onPressed: () {
              
                          },
                          style: myButton,
                        child: Text('Login', style: TextStyle(fontSize: 17),),
                    ),
                  ),
              
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Create new account'),
                      TextButton(
                        onPressed: (){
                          Navigator.push(
                            context,MaterialPageRoute(builder: (context) => const signup()),
                          );
                        },
                        child: Text('Sign up'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
