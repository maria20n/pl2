import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/screens/forgetPass.dart';
import 'package:flutter_application_1/screens/signup.dart';
import 'package:flutter_application_1/widgets/widgets.dart';
import '../font.dart';
import 'homepage.dart';
import 'package:flutter_application_1/widgets/login.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 420),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                         Text('Login',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w900,
                              fontSize: 30,
                              letterSpacing: 1.5,
                              fontFamily: 'Bebas')),
                      LogInput(
                          icon: Icons.email,
                          hint: 'Email',
                          inputType: TextInputType.emailAddress,
                          inputAction: TextInputAction.next,
                          secret: false,
                        ),
                        
                        LogInput(
                          icon: Icons.lock,
                          hint: 'Password',
                          inputType: TextInputType.datetime,
                          inputAction: TextInputAction.done,
                          secret: true,
                        ),
                       
                        
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                  
                            FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return ForgetPass();
                                      },
                                    ),
                                  );
                                },
                                child: Text(
                                  'Forget Password ?',
                                  style: TextStyle(
                                      fontFamily: 'Bebas',
                                      fontSize: 20,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(height: 100),
                            RoundedButton(
                              onpressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return HomePage();
                                    },
                                  ),
                                );
                              },
                              buttonText: 'Login',
                            ),
                            SizedBox(height: 40),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Do not have account ?',
                                    style: TextStyle(
                                      fontFamily: 'Bebas',
                                      fontSize: 20,
                                      color: Colors.black54,
                                    )),
                                SizedBox(width: 0),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.black45))),
                                  child: FlatButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return SignUp();
                                            },
                                          ),
                                        );
                                      },
                                      child: Text(
                                        'Sign up',
                                        style: TextStyle(
                                            fontFamily: 'Bebas',
                                            fontSize: 20,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                              ],
                            ),
                          ],
                        )
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
