import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Hello,my name is Kurmanjan.I am Learning flutter in this course as an IT program. My goal is to become a great programmer in the future.',
            style: TextStyle(
              fontSize: 30,
              color: Colors.blue,
              fontFamily: ('Passifico'),
              fontWeight: FontWeight.w700,
            ),
          ),
        ]),
      ),
    );
  }
}
