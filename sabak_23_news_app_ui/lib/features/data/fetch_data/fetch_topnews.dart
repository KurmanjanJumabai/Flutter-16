import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sabak_23_news_app_ui/constants/api_const.dart';
import 'package:sabak_23_news_app_ui/features/data/models/top_news.dart';

class FetchTopNews {
  Future<TopNews?> fetchTopNews() async {
    final respons = await http.get(Uri.parse(ApiConst.newsData));
    if (respons.statusCode == 200) {
      print(respons.body);
      final data = jsonDecode(respons.body);
      final topnews = TopNews.fromJson(data);
      return topnews;
    }
    return null;
  }
}
