import 'package:flutter/material.dart';

class CustomFormInput extends StatefulWidget {
  final String label;
  final String value;

  CustomFormInput({Key key, this.label, this.value}) : super(key: key);

  @override
  _CustomFormInputState createState() => _CustomFormInputState();
}

class _CustomFormInputState extends State<CustomFormInput> {
  String _value;

  TextEditingController _controller;

  void initState() {
    _value = widget.value;
    _controller = TextEditingController();
    _controller.text = widget.value;
    super.initState();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
        child: DecoratedBox(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 1, color: Color(0xFFD1D3DB)))),
          child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(widget.label,
                        style: TextStyle(
                            fontFamily: "Poppins-light",
                            color: Colors.blueAccent,
                            fontSize: 16)),
                    Text(_value, style: TextStyle(fontFamily: "Poppins-light",fontSize: 15))
                  ])),
        ),
      ); // GestudeDetector end
}
