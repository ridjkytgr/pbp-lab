import 'package:flutter/material.dart';
import 'package:lab_6/widgets/button.dart';
import 'package:lab_6/widgets/text_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      Text("Sign Up",
          style:
              TextStyle(color: Colors.black, decoration: TextDecoration.none)),
      TextFieldAuth(label: "Masukkan username di sini."),
      PrimaryButton(),
      SecondaryButton(),
    ]);
  }
}
