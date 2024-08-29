import 'package:flutter/material.dart';
import 'package:news_appp/widgets/category_listView.dart';
import 'package:news_appp/widgets/news_listView.dart';
import 'package:news_appp/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "News",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                "Cloud",
                style: TextStyle(
                    color: Colors.orange, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: CategoryListview(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 28,
                ),
              ),
              NewsListViewBuilder(category: "general",)
              
            ],
          ),
        ));
  }
}


