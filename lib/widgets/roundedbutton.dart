import 'package:flutter/material.dart';


class RoundedButton extends StatefulWidget {
  const RoundedButton({
    Key key,
    @required this.buttonText,
    @required this.onpressed,
  }) : super(key: key);

  final String buttonText;
  final Function onpressed;

  @override
  _RoundedButtonState createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xFFFFC4A8), borderRadius: BorderRadius.circular(16)),
      child: FlatButton(
        onPressed: widget.onpressed,
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              widget.buttonText,
              style: TextStyle(
                fontFamily: 'Bebas',
                fontSize: 20,
                color: Colors.black54,
              ),
            )),
      ),
    );
  }
}
