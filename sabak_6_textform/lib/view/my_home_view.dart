import 'package:flutter/material.dart';
import 'package:sabak_6_textform/view/second_page.dart';

class MyHomeView extends StatefulWidget {
  const MyHomeView({super.key});

  @override
  State<MyHomeView> createState() => _MyHomeViewState();
}

class _MyHomeViewState extends State<MyHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff056c5c),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(child: Text('Тапшырма 4')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 190,
              height: 190,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/kurmanjan.jpg"),
              ),
            ),
            const Text(
              'Kurmanjan Jumabaeva',
              style: TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.w400,
                fontFamily: "Pacifico-Regular",
              ),
            ),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                color: Color(0xfff7f9f9),
                fontSize: 28,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Divider(
              indent: 25,
              endIndent: 25,
              height: 0,
              thickness: 2,
              color: Colors.white,
            ),
            const SizedBox(height: 23),
            TextFormField(
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(
                  Icons.phone_outlined,
                  color: Color(0xff056c5c),
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            TextFormField(
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(
                  Icons.local_post_office_outlined,
                  color: Color(0xff056c5c),
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  ),
                );
              },
              child: const Text(
                'next',
                style: TextStyle(
                  color: Color(0xff056c5c),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
