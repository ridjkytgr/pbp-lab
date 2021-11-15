import 'package:flutter/material.dart';

class TextFieldAuth extends StatefulWidget {
  const TextFieldAuth({Key? key, required this.label}) : super(key: key);
  final String label;
  @override
  _TextFieldAuthState createState() => _TextFieldAuthState();
}

class _TextFieldAuthState extends State<TextFieldAuth> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: <Widget>[
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
                hintText: "johndoe@gmail.com",
                contentPadding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                )),
          ),
        ),
      ],
    ));
  }
}
