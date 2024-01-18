import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  StartScreen(this.switchScreen, {super.key,});
  void Function() switchScreen; // instantiating other class's method with constructor to call it  unlike calling ClassObject.method() or making it static with Class.method()
  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 250,
          color: Colors.white,
          // fit: BoxFit.fill,
        ),
        const SizedBox(
          height: 25,
        ),
        const Text(
          "Learn Flutter the fun way",
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: 25,
        ),
        OutlinedButton.icon(
          onPressed: () {
            widget.switchScreen(); //
          },
          label: const Text("Start Quiz",
          ),
          icon: const Icon(Icons.arrow_drop_up_outlined),
        )
      ]),
    );
  }
}
