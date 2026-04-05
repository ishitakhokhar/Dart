import 'package:flutter/material.dart';

class DivideHorizontal3EqualsPart extends StatefulWidget {
  @override
  State<DivideHorizontal3EqualsPart> createState() =>
      _DivideHorizontal3EqualsPartState();
}

class _DivideHorizontal3EqualsPartState
    extends State<DivideHorizontal3EqualsPart> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.red,)),
          Expanded(child: Container(color: Colors.yellow,)),
          Expanded(child: Container(color: Colors.black,)),

          Column(
            children: [
              Expanded(child: Container(color: Colors.green,)),
              Expanded(child: Container(color: Colors.blue,)),
              Expanded(child: Container(color: Colors.grey,)),

            ],
          ),

          Column(
            children: [
              Expanded(child: Container(color: Colors.grey,)),
              Expanded(child: Container(color: Colors.brown,)),
              Expanded(child: Container(color: Colors.purple,)),

            ],
          )
        ],
      ),
    );
  }
}
