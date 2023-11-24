import 'package:flutter/material.dart';
import 'package:sabak_11_refactoring/features/presentation/components/App_text_field.dart';
import 'package:sabak_11_refactoring/features/presentation/components/app_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Refactoring'.toUpperCase()),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppTextField(
                hintText: 'Name', borderRadius: BorderRadius.circular(10)),
            AppTextField(
                hintText: 'Email', borderRadius: BorderRadius.circular(20)),
            AppTextField(
                hintText: 'Phone Number',
                borderRadius: BorderRadius.circular(25)),
            AppTextField(
                hintText: 'Password', borderRadius: BorderRadius.circular(40)),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppButton(
                  winterColor: Colors.yellowAccent,
                  text: 'YellowAccented Button',
                ),
                AppButton(
                  winterColor: Colors.lightGreen,
                  text: 'LightGreen Button',
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
