import 'package:flutter/material.dart';

class ListViewExemple extends StatefulWidget {
  const ListViewExemple({super.key});

  @override
  State<ListViewExemple> createState() => _ListViewExempleState();
}

class _ListViewExempleState extends State<ListViewExemple> {
  List<String> images = [
    'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
    'https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg',
    'https://highlysensitiverefuge.com/wp-content/uploads/2019/12/highly-sensitive-person-signs.jpeg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Pierre-Person.jpg/1200px-Pierre-Person.jpg',
    'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
    'https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg',
    'https://highlysensitiverefuge.com/wp-content/uploads/2019/12/highly-sensitive-person-signs.jpeg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Pierre-Person.jpg/1200px-Pierre-Person.jpg',
    'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
    'https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg',
    'https://highlysensitiverefuge.com/wp-content/uploads/2019/12/highly-sensitive-person-signs.jpeg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Pierre-Person.jpg/1200px-Pierre-Person.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 150,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Container(
                      width: 400,
                      height: 400,
                      child: Image.network(images[index]));
                }),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  final image = images[index];
                  return Container(
                      width: 400, height: 400, child: Image.network(image));
                }),
          ),
        ],
      ),
    );
  }
}
