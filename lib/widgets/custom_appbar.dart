import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  const CustomAppbar({super.key})
      : preferredSize = const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(
        padding: const EdgeInsets.all(8),
        child: Image.network(
          'https://w7.pngwing.com/pngs/507/791/png-transparent-apptrailers-cocktail-android-cocktail-food-recipe-logo.png',
          height: 50,
          width: 50,
        ),
      ),
      title: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
