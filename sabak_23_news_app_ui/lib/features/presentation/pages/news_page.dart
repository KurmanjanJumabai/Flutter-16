import 'package:flutter/material.dart';
import 'package:sabak_23_news_app_ui/constants/app_colors.dart';
import 'package:sabak_23_news_app_ui/constants/app_text_styles.dart';
import 'package:sabak_23_news_app_ui/features/data/fetch_data/fetch_topnews.dart';
import 'package:sabak_23_news_app_ui/features/data/news_model.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  FetchTopNews? fetchTopNews;
  @override
  void initState() {
    super.initState();
    FetchTopNews().fetchTopNews();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Appcolors.deepOrange,
          title: const Text(
            'News Agregator',
            style: AppTextStyles.newsNextStyle,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: newsList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Card(
                color: Colors.blueGrey.withOpacity(0.5),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 130,
                          height: 130,
                          child: Image.asset(
                            newsList[index].newsImages,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            newsList[index].newsText,
                            style: AppTextStyles.newsTextStyle,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.red,
                      thickness: 2.0,
                      indent: 10,
                      endIndent: 10,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.search),
        ),
      ),
    );
  }
}
