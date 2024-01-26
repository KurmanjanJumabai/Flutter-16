import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _myAppar(),
      body: const Column(children: []),
    );
  }

  AppBar _myAppar() {
    return AppBar(
      title: const Text(
        'Тапшырма-09',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
      ),
    );
  }
}
