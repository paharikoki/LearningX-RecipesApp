// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mytestapp/model/recipes.dart';
import 'package:mytestapp/utils/recipe_data.dart';

import 'package:mytestapp/widgets/category_tab.dart';
import 'package:mytestapp/widgets/custom_appbar.dart';
import 'package:mytestapp/widgets/recipes_card.dart';

class HomeScreen extends StatelessWidget {
  final List<String> categories = [
    'All',
    'Breakfast',
    'Lunch',
    'Dinner',
    'Snack',
    'Dessert'
  ];
  HomeScreen({
    super.key, // Change super.key to Key? key
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Katalog Resep Makanan',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(), // This will push the icon to the right end
                Icon(
                  Icons.settings,
                  color: Colors.red,
                ),
              ],
            ),
            CategoryTab(
              categories: categories,
              onCategorySelected: (category) {},
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 225,
                ),
                itemCount: RecipeList.recipeList.length,
                itemBuilder: (BuildContext context, int index) {
                  final recipe = RecipeList.recipeList[index];
                  return RecipeCard(
                    imageUrl: recipe.image,
                    name: recipe.title,
                    duration: '${recipe.time} minutes',
                    category: recipe.category.name,
                    categorycolor: recipe.category.categoryColor,
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
