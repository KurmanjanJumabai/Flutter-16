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
        appBar: AppBar(),
        body: const Column(
          children: [],
        ));
  }
}

AppBar myAppBar() => AppBar(
      title: const Text('RefactjringExemample'),
    );
Widget myBody() {
  return Column(
    children: [
      Container(
        width: 200,
        height: 200,
        color: Colors.cyanAccent,
      ),
    ],
  );
}
