import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: sabakPage(),
    );
  }
}

class sabakPage extends StatefulWidget {
  const sabakPage({super.key});

  @override
  State<sabakPage> createState() => _sabakPageState();
}

class _sabakPageState extends State<sabakPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
