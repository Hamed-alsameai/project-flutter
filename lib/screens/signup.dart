import 'package:flutter/material.dart';

import '../myVariables/my_Button.dart';
import '../myWidgets/my_TextField.dart';
import 'login.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    'Sign up',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  MyTextfield(
                    inputTypee: TextInputType.text,
                    isPass: false,
                    lableTextt: "Username",
                  ),
                  SizedBox(
                    height: 30,
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
                      onPressed: () {},
                      style: myButton,
                      child: Text(
                        'Sign up',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have account?'),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,MaterialPageRoute(builder: (context) => const login()),
                          );
                        },
                        child: Text('Login'),
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
