import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String appbarTitle = 'Login Page';
  String assetImagePath = 'assets/images/dice1.jpg';
  String networkImage =
      'https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bmF0dXJlJTIwdHJlZXxlbnwwfHwwfHx8MA%3D%3D';
  TextEditingController textEditingController = TextEditingController();
  final formKeyGlobal = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: GestureDetector(
              child: Icon(Icons.help, color: Colors.white),
              onTap: () {},
            ),
          ),
        ],
        title: Text(
          appbarTitle,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.black),
            ),
            margin: const EdgeInsets.all(8.0),
            padding: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Expanded(
                  child: Form(
                    key: formKeyGlobal,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Assets or Image URL',
                      ),
                      controller: textEditingController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter URL';
                        }
                        if (!value.toString().startsWith('assets/') &&
                            !value.toString().startsWith('https://')) {
                          return 'Please Enter Assets Valid URL';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    if (formKeyGlobal.currentState!.validate()) {
                      if (textEditingController.text
                          .toString()
                          .toLowerCase()
                          .startsWith('assets/')) {
                        assetImagePath = textEditingController.text.toString();
                      } else {
                        networkImage = textEditingController.text.toString();
                      }
                      setState(() {});
                    }
                  },
                  icon: Icon(Icons.add),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Image.asset(assetImagePath, fit: BoxFit.fill),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: Colors.white.withOpacity(0.5),
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      'First Child of column',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(fit: BoxFit.fill, networkImage),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: Colors.white.withOpacity(0.5),
                      child: Text(
                        'Second Child of column',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
