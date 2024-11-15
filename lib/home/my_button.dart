import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function onTap;
  final String text;
  const MyButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(text);
      },
      child: Container(
        width: double.maxFinite,
        height: 70,
        margin: const EdgeInsets.only(top: 20, left: 40, right: 40, bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.indigo,
        ),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(fontSize: 16),
        )),
      ),
    );
  }
}
