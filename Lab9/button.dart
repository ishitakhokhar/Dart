import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  @override
  State<Button> createState() => _Button();
}

class _Button extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                print("Button Clicked");
              },
              child: Text("Click Me"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Text Button"),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text("Outlined Button"),
            ),
          ],
        ),
      ),
    );
  }
}
