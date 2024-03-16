import 'package:flutter/material.dart';

class CategoryTab extends StatefulWidget {
  final List<String> categories;
  final Function(String) onCategorySelected;

  const CategoryTab({
    super.key,
    required this.categories,
    required this.onCategorySelected,
  });

  @override
  State<CategoryTab> createState() => _CategoryTabState();
}

class _CategoryTabState extends State<CategoryTab> {
  String selectedCategory = '';
  @override
  void initState() {
    super.initState();
    // Set the default selected category to the first category
    selectedCategory = widget.categories.isNotEmpty ? widget.categories[0] : '';
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.categories.length,
        itemBuilder: (context, index) {
          String category = widget.categories[index];
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedCategory = category;
              });
              widget.onCategorySelected(category);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: category == selectedCategory
                      ? Colors.red[400]
                      : Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.red[400]!,
                    width: 1.5,
                  )),
              child: Row(
                children: [
                  Icon(Icons.fastfood,
                      color: category == selectedCategory
                          ? Colors.white
                          : Colors.black),
                  const SizedBox(width: 15),
                  Center(
                    child: Text(
                      category,
                      style: TextStyle(
                        color: category == selectedCategory
                            ? Colors.white
                            : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
