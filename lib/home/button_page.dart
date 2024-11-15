import 'my_button.dart';
import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key});

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  String topic = "Packages";

  callBack(varTopic) {
    setState(() {
      topic = varTopic;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learning Flutter"),
      ),
      body: Column(
        children: [
          Container(
            width: double.maxFinite,
            height: 70,
            margin:
                const EdgeInsets.only(top: 50, left: 40, right: 40, bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.indigo,
            ),
            child: Center(
                child: Text(
              "We are learning flutter $topic",
              style: const TextStyle(fontSize: 16),
            )),
          ),
          MyButton(onTap: callBack, text: "Bloc"),
          MyButton(onTap: callBack, text: "Cubit"),
          MyButton(onTap: callBack, text: "Provider"),
          MyButton(onTap: callBack, text: "Riverpod"),
          MyButton(onTap: callBack, text: "GetX"),
        ],
      ),
    );
  }
}
