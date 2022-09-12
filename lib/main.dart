import 'package:call_back_function/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'call back',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String topic = 'Flutter';

//void call back function
  void callBack(varTopic) {
    setState(() {
      topic = varTopic;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Call Back Function"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.blue),
              child: Center(
                child: Text(
                  "We are Learning:- $topic",
                  style: const TextStyle(fontSize: 19, color: Colors.white),
                ),
              ),
            ),

            // another class
            MyButton(
              topic: "GetX ",
              callbackfunction: callBack,
            ),
            MyButton(
              topic: "Cubit ",
              callbackfunction: callBack,
            ),
            MyButton(
              topic: "Provider ",
              callbackfunction: callBack,
            ),
            MyButton(
              topic: "Bloc ",
              callbackfunction: callBack,
            ),
          ],
        ));
  }
}
