import 'package:flutter/material.dart';
import 'package:news_appp/models/category_model.dart';
import 'package:news_appp/widgets/category_card.dart';

class CategoryListview extends StatelessWidget {
  const CategoryListview({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(image: "assets/business.avif", categoryName: "Business"),
    CategoryModel(image: "assets/technology.jpeg", categoryName: "Technology"),
    CategoryModel(image: "assets/science.avif", categoryName: "Science"),
    CategoryModel(image: "assets/sports.avif", categoryName: "Sports"),
    CategoryModel(image: "assets/entertaiment.avif", categoryName: "Entertaiment"),
    CategoryModel(image: "assets/health.avif", categoryName: "Health"),
    CategoryModel(image: "assets/general.avif", categoryName: "General"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}
