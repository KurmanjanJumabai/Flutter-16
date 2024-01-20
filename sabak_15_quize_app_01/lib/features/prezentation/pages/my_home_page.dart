import 'package:flutter/material.dart';
import 'package:sabak_15_quize_app_01/features/domain/quiz_brain.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyHomePage> {
  int index = 0;
  List<bool> jooptor = [];
  void incrementIndex(bool joop) {
    if (jooptor.length < 9) {
      final result = quizList[index].joop;
      jooptor.add(result);
    }

    if (index < 9) {
      index++;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                quizList[index].suroo,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 90),
            CustomButton(
              backgroundColor: Colors.blue,
              text: 'Туура',
              onPressed: () {
                incrementIndex(true);
              },
            ),
            const SizedBox(height: 20),
            CustomButton(
              backgroundColor: Colors.pink,
              text: 'Туура эмес',
              onPressed: () {
                incrementIndex(false);
              },
            ),
            const SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: jooptor
                      .map((e) => e
                          ? const Icon(Icons.done, color: Colors.blue)
                          : const Icon(Icons.close, color: Colors.pink))
                      .toList(),
                ),
                IconButton(
                  onPressed: () {
                    index = 0;
                    jooptor.clear();
                    setState(() {});
                  },
                  icon:
                      const Icon(Icons.refresh, color: Colors.black, size: 30),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      title: const Text('7-тапшырма',
          style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white)),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.text,
    required this.onPressed,
  });

  final Color backgroundColor;

  final String text;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    List<Icon> icons = [const Icon(Icons.done), const Icon(Icons.close)];
    return Padding(
      padding: const EdgeInsets.only(bottom: 9),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          minimumSize: const Size(335, 65),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 27,
              fontWeight: FontWeight.w100,
              fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
