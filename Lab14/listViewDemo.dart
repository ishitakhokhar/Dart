import 'package:flutter/material.dart';

class Listviewdemo extends StatelessWidget {

  const Listviewdemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Demo"),
        centerTitle: true,
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        reverse: false,
        physics: const ClampingScrollPhysics(),
        padding: const EdgeInsets.all(16),

        itemCount: 10,

        itemBuilder: (context, index) {
          return Container(
            width: 120, // IMPORTANT for horizontal list
            margin: const EdgeInsets.only(right: 12),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blue.shade200,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              "Item ${index + 1}",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
      ),
    );
  }
}
