import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Textfieldterminal extends StatefulWidget {
  const Textfieldterminal({super.key});

  @override
  State<Textfieldterminal> createState() => _TextfieldterminalState();
}

class _TextfieldterminalState extends State<Textfieldterminal> {
  TextEditingController textEditingController = TextEditingController();

  String submitName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Name"),

          Center(
            child: SizedBox(
              width: 500,
              child: TextFormField(
                controller: textEditingController,
                decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),

          ElevatedButton(
            onPressed: () {
              setState(() {
                submitName = textEditingController.text;
                textEditingController.clear();
              });
            },
            child: Text("Submit"),
          ),
          myCustomWidget(submitName, Colors.black),
        ],
      ),
    );
  }

  Widget myCustomWidget(String input, Color c) {
    return Text(
      input,
      style: GoogleFonts.abel(
        fontSize: 20,
        color: c,
      ),
    );
  }
}
