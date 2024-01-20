import 'package:flutter/material.dart';
import 'package:sabak_19_capitals_of_the_world_ui/features/domain/model/continents.dart';
import 'package:sabak_19_capitals_of_the_world_ui/features/repositories/components/line_divider.dart';

import 'package:sabak_19_capitals_of_the_world_ui/features/repositories/theme/app_size.dart';
import 'package:sabak_19_capitals_of_the_world_ui/features/repositories/theme/app_text_style.dart';
import 'package:sabak_19_capitals_of_the_world_ui/features/repositories/theme/app_texts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _myAppBar(),
      body: Column(
        children: [
          const LineDivider(),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(
                6,
                (index) {
                  return Container(
                    width: 100,
                    height: 100,
                    color: Colors.white,
                    margin: const EdgeInsets.all(10),
                    child: Center(
                        child: Column(
                      children: [
                        Text(
                          continenstList[index].continentName,
                        ),
                        Image.asset(
                          "${continenstList[index].continantImage}",
                        ),
                      ],
                    )),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar _myAppBar() {
    return AppBar(
      title: const Text(
        AppTexts.titleText,
        style: AppTextStyles.titleTextStyle,
      ),
      actions: const [
        Icon(
          Icons.settings,
          size: 25,
          color: Color(0xff355CE5),
        ),
        Appsize.w20,
        Icon(Icons.more_vert),
      ],
    );
  }
}
