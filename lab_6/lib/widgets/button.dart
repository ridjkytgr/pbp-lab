import 'package:flutter/material.dart';

class PrimaryButton extends StatefulWidget {
  const PrimaryButton({Key? key}) : super(key: key);

  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ElevatedButton(
            child: const Text("SIGN UP"),
            onPressed: () => {print("Pressed primary button")},
            style: ElevatedButton.styleFrom(primary: const Color(0xff4945ff))));
  }
}

class SecondaryButton extends StatefulWidget {
  const SecondaryButton({Key? key}) : super(key: key);

  @override
  _SecondaryButtonState createState() => _SecondaryButtonState();
}

class _SecondaryButtonState extends State<SecondaryButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ElevatedButton(
            child: const Text("Kembali"),
            onPressed: () => {print("Pressed secondary button")},
            style: ElevatedButton.styleFrom(primary: const Color(0xffff0000))));
  }
}
