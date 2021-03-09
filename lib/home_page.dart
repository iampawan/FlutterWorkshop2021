import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  // Textfield where someone can enter the year when someone was born
  // We need a button which someone can use to submit the year
  // A textbox to show the result

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _age = 0;
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Age Calculator"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter your birth year",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  child: Text("Submit"),
                  onPressed: () {
                    final _year = num.tryParse(controller.text);
                    _age = 2021 - _year;
                    print(_age);
                    setState(() {});
                  },
                  textColor: Colors.white,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 20,
                ),
                if (_age != 0)
                  Text(
                    "You age is: $_age years",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  )
              ],
            ),
          ),
        ));
  }
}
