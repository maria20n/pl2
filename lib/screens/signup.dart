import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/addproduct.dart';
import 'package:flutter_application_1/screens/loginpage.dart';
import 'package:flutter_application_1/widgets/background.dart';
import 'package:flutter_application_1/widgets/widgets.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Background(),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: buildAppBar(context),
        body: ListView(
          addAutomaticKeepAlives: false,
          physics: BouncingScrollPhysics(),
          children: [
          Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 350),
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(children: [
                    Container(
                      child: Text('Sign Up',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w900,
                              fontSize: 30,
                              letterSpacing: 1.5,
                              fontFamily: 'Bebas')),
                    ),
                    Column(
                      children: [

                        LogInput(
                          icon: Icons.person,
                          hint: 'Name',
                          inputType: TextInputType.emailAddress,
                          inputAction: TextInputAction.next,
                          secret: false,
                        ),

                        LogInput(
                          icon: Icons.mail,
                          hint: 'Email',
                          inputType: TextInputType.emailAddress,
                          inputAction: TextInputAction.next,
                          secret: false,
                        ),

                        LogInput(
                          icon: Icons.phone,
                          hint: 'Phone number',
                          inputType: TextInputType.number,
                          inputAction: TextInputAction.next,
                          secret: false,
                        ),

                        LogInput(
                          icon: Icons.lock,
                          hint: 'Password',
                          inputAction: TextInputAction.done,
                          secret: true,
                        ),
                      ],
                    ),
                    Column(children: [
                      SizedBox(height: 30),
                      RoundedButton(
                        onpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return AddProduct();
                              },
                            ),
                          );
                        },
                        buttonText: 'Sign Up',
                      ),
                    ])
                  ])),
            )
          ]),
        ]),
      )
    ]);
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
        onPressed: () {
          Navigator.push(
            context,
          MaterialPageRoute ( 
          builder: (context) {
          return LoginPage();
          
         }
          )
         );
                                    
                                      },
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black54,
        )),
  );
}
