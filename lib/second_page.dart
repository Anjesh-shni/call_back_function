import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  //parameter
  final String topic;
  // receiving parameter value from Home Class
  final Function callbackfunction;

  const MyButton(
      {Key? key, required this.topic, required this.callbackfunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callbackfunction(topic);
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.blue),
        child: Center(
          child: Text(
            topic,
            style: const TextStyle(fontSize: 19, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
