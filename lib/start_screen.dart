import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: Colors.white,
          // fit: BoxFit.fill,
        ),
        const SizedBox(
          height: 25,
        ),
        const Text(
          "Learn Flutter the fun way",
          selectionColor: Colors.white,
        ),
        const SizedBox(
          height: 25,
        ),
        OutlinedButton.icon(
          onPressed: () {
            // next screen
          },
          label: const Text("Start Quiz"),
          icon: const Icon(Icons.arrow_drop_up_outlined),
        )
      ]),
    );
  }
}
