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

class RoleRadioButton extends StatefulWidget {
  const RoleRadioButton({Key? key}) : super(key: key);

  @override
  _RoleRadioButtonState createState() => _RoleRadioButtonState();
}

enum RoleChoice { penerima, penyedia }

RoleChoice? _roleChoice = RoleChoice.penerima;

class _RoleRadioButtonState extends State<RoleRadioButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Penerima'),
          leading: Radio<RoleChoice>(
            value: RoleChoice.penerima,
            groupValue: _roleChoice,
            onChanged: (RoleChoice? value) {
              setState(() {
                _roleChoice = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Penyedia'),
          leading: Radio<RoleChoice>(
            value: RoleChoice.penyedia,
            groupValue: _roleChoice,
            onChanged: (RoleChoice? value) {
              setState(() {
                _roleChoice = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
