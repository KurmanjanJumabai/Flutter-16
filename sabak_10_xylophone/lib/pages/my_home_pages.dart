import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sabak_10_xylophone/app/components/button_conttainer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _buildAppBar(), body: _buildBody());
  }

  Column _buildBody() {
    return Column(
      children: [
        ButtonContainer(
          color: Colors.red,
          baskych: () => player.play(
            AssetSource('do.wav'),
          ),
        ),
        ButtonContainer(
          color: Colors.yellow,
          baskych: () => player.play(
            AssetSource('re.wav'),
          ),
        ),
        ButtonContainer(
          color: Colors.green,
          baskych: () => player.play(
            AssetSource('mi.wav'),
          ),
        ),
        ButtonContainer(
          color: Colors.blue,
          baskych: () => player.play(
            AssetSource('fa.wav'),
          ),
        ),
        ButtonContainer(
          color: Colors.orange,
          baskych: () => player.play(
            AssetSource('so.wav'),
          ),
        ),
        ButtonContainer(
          color: Colors.pink,
          baskych: () => player.play(
            AssetSource('la.wav'),
          ),
        ),
        ButtonContainer(
          color: Colors.purple,
          baskych: () => player.play(
            AssetSource('si.wav'),
          ),
        ),
        ButtonContainer(
          color: Colors.brown,
          baskych: () => player.play(
            AssetSource('do.wav'),
          ),
        ),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      title: const Text(
        'Xylophone',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
