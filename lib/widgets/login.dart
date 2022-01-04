import 'package:flutter/material.dart';
import '../font.dart';

class LogInput extends StatelessWidget {
  LogInput({
    Key key,
    @required this.icon,
    @required this.hint,
    @required this.secret,
    this.inputType,
    this.inputAction,
  }) : super(key: key);
  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final bool secret;
final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black12.withOpacity(0.4),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Form(
            key: _formKey,
            child: TextFormField(
              validator: (text) {
                if (text.isEmpty || text == null) {
                  return 'cannotbe empty';
                }
                return null;
              },
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 12),
                border: InputBorder.none,
                hintText: hint,
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: Icon(icon, color: Color(0xFFFFC4A8), size: 25),
                ),
                hintStyle: BodyText,
              ),
              obscureText: secret,
              style: BodyText2,
              keyboardType: inputType,
              textInputAction: inputAction,
            
            ),
          ),
        ));
  }
}
