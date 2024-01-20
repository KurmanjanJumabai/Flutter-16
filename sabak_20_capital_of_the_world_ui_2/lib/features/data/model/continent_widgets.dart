import 'package:flutter/material.dart';
import 'package:sabak_20_capital_of_the_world_ui_2/features/data/model/continents.dart';
import 'package:sabak_20_capital_of_the_world_ui_2/features/repositories/pages/detail_page.dart';

class ContinentsWidget extends StatelessWidget {
  const ContinentsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(
        6,
        (index) {
          return GestureDetector(
            onTap: () {
              if (continenstList[index].test != null) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => DetailPage(
                          image: continenstList[index]
                              .asiaContinentTest!
                              .surooText)),
                    ));
              } else {
                final snackBar = SnackBar(
                  content: Text(
                      'Сиз тандаган ${continenstList[index].continentName} континенти бош'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {},
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
            child: Container(
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
                    continenstList[index].continantImage,
                  ),
                ],
              )),
            ),
          );
        },
      ),
    );
  }
}
