import 'package:flutter/material.dart';

class RadiobuttonDemo extends StatefulWidget {
  @override
  State<RadiobuttonDemo> createState() => _RadioButtonDemoState();
}

class _RadioButtonDemoState extends State<RadiobuttonDemo> {
  String selectedGender = "Male";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Radio List Example")),
      body: Column(
        children: [
          RadioListTile(
            title: Text("Male"),
            value: "Male",
            groupValue: selectedGender,
            onChanged: (value) {
              setState(() {
                selectedGender = value!;
              });
            },
          ),
          RadioListTile(
            title: Text("Female"),
            value: "Female",
            groupValue: selectedGender,
            onChanged: (value) {
              setState(() {
                selectedGender = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}
