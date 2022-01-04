import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/login.dart';
import 'package:flutter_application_1/widgets/roundedbutton.dart';

class ForgetPass extends StatefulWidget {
  @override
  _ForgetPassState createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Padding (
        padding: const EdgeInsets.symmetric(vertical: 60 ,horizontal: 35),
        child: Column(
          children:[
            Text(
          "Enter your email to send you a confirmation code :",
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.black54,
           fontFamily: 'bebas',
          ),
        ),
        SizedBox(height:20),
         LogInput(
                          icon: Icons.mail,
                          hint: 'Email',
                          inputType: TextInputType.emailAddress,
                          inputAction: TextInputAction.done,
                          secret: false,
                        ),
                       SizedBox(height: 30,),
                        RoundedButton(
                              onpressed: () {
                              },
                              buttonText: 'submit',
                            ),
          ]
      ),
      )
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
          )),
      title: Text(
        'Forget Password ?',
        style: TextStyle(
          fontSize: 30,
          color: Colors.black54,
          fontFamily: 'bebas',
        ),
      ),
      centerTitle: true,
    );
  }
}
