import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomeWiew extends StatefulWidget {
  const MyHomeWiew({super.key});

  @override
  State<MyHomeWiew> createState() => _MyHomeWiewState();
}

class _MyHomeWiewState extends State<MyHomeWiew> {
  Random random = Random();
  int firstNumDice = 1;
  int secondNumDice = 1;
  int sum1 = 0;
  String firstGammer = 'АСАН';

  void firstChangeDices() {
    //firtsDice озгормосуно рандомду байлоо
    firstNumDice = random.nextInt(6) + 1;
    //secondDise озгормосуно рандомду байлоо
    secondNumDice = random.nextInt(6) + 1;
    // Чыккан санды кошуу
    sum1 = sum1 + firstNumDice + secondNumDice;
    //Абалдын озгоруусу учун setState методун колдонуу.
    setState(() {});
    result();
  }

  int thirdNumDice = 1;
  int fourthNumDice = 1;
  int sum2 = 0;
  String secondGammer = 'УСОН';

  void secondChangeDices() {
    //firtsDice озгормосуно рандомду байлоо
    thirdNumDice = random.nextInt(6) + 1;
    //secondDise озгормосуно рандомду байлоо
    fourthNumDice = random.nextInt(6) + 1;
    // Чыккан санды кошуу
    sum2 = sum2 + thirdNumDice + fourthNumDice;
    //Абалдын озгоруусу учун setState методун колдонуу.
    setState(() {});
    result();
  }

  void result() {
    if (sum1 >= 50) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('$firstGammer чемпион'),
              actions: [
                TextButton(
                  onPressed: () {
                    resetAll();
                    Navigator.pop(context);
                    setState(() {});
                  },
                  child: const Text('Чыгуу'),
                ),
              ],
            );
          });
    } else if (sum2 >= 50) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('$secondGammer чемпион'),
              actions: [
                TextButton(
                  onPressed: () {
                    resetAll();
                    Navigator.pop(context);
                    setState(() {});
                  },
                  child: const Text('Чыгуу'),
                ),
              ],
            );
          });
    }
  }

  void resetAll() {
    firstNumDice = 1;
    secondNumDice = 1;
    sum1 = 0;
    thirdNumDice = 1;
    fourthNumDice = 1;
    sum2 = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.yellow,
        title: Text(
          'dice app'.toUpperCase(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            firstGammer,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Text(
            '$sum1',
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: InkWell(
                    onTap: () {
                      firstChangeDices();
                    },
                    child:
                        SvgPicture.asset('assets/die_face_$firstNumDice.svg'),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: InkWell(
                    onTap: () {
                      secondChangeDices();
                    },
                    child:
                        SvgPicture.asset('assets/die_face_$secondNumDice.svg'),
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            color: Colors.black,
            indent: 20,
            endIndent: 20,
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: InkWell(
                    onTap: () {
                      secondChangeDices();
                    },
                    child:
                        SvgPicture.asset('assets/die_face_$thirdNumDice.svg'),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: InkWell(
                    onTap: () {
                      secondChangeDices();
                    },
                    child:
                        SvgPicture.asset('assets/die_face_$fourthNumDice.svg'),
                  ),
                ),
              ),
            ],
          ),
          Text(
            '$sum2',
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            secondGammer,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
