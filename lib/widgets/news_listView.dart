import 'package:flutter/material.dart';
import 'package:news_appp/models/article_model.dart';
import 'package:news_appp/widgets/news_tile.dart';
import 'package:dio/dio.dart';

class NewsListview extends StatelessWidget {
  final List<ArticleModel> results;
  const NewsListview({super.key, required this.results});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: results.length,
            (context, Index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: NewsTile(articleModel: results[Index]),
      );
    }));
  }
}