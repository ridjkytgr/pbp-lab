import 'package:flutter/material.dart';

class AuthText extends StatefulWidget {
  const AuthText({Key? key, required this.label}) : super(key: key);
  final String label;
  @override
  _AuthTextState createState() => _AuthTextState();
}

class _AuthTextState extends State<AuthText> {
  final _formKey = GlobalKey<FormState>();
  String onChangeVal = "";

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: <Widget>[
        Expanded(
          child: Form(
            key: _formKey,
            child: TextFormField(
              onChanged: (text) {
                onChangeVal = text;
                print(onChangeVal);
              },
              decoration: InputDecoration(
                  label: Text(widget.label),
                  contentPadding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
            ),
          ),
        ),
      ],
    ));
  }
}
