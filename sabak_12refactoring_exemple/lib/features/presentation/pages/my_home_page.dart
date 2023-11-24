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
      appBar: myAppBar(),
      body: myBody(),
    );
  }

  AppBar myAppBar() => AppBar(
        title: const Text('RefactoringExemample'),
      );
  Widget myBody() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              ImageContainer(
                image:
                    'https://as2.ftcdn.net/v2/jpg/01/51/99/39/1000_F_151993994_mmAYzngmSbNRr6Fxma67Od3WHrSkfG5I.jpg',
                text: 'Marjan',
              ),
              SizedBox(width: 10),
              ImageContainer(
                  image:
                      'https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg',
                  text: 'Symaya',
                  color: Colors.red),
            ],
          ),
          Text('data')
        ],
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
    required this.image,
    this.text = 'Person',
    this.color,
  });
  final String image;
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
        height: 200,
        child: Column(
          children: [
            Image.network(
              image,
              fit: BoxFit.cover,
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 15,
              ),
            )
          ],
        ),
      ),
    );
  }
}
