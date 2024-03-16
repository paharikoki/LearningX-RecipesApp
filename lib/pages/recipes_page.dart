// import library
import 'package:flutter/material.dart';
import 'package:mytestapp/widgets/custom_input.dart';

//class name
class NewRecipeScreen extends StatelessWidget {
  const NewRecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Recipe',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        centerTitle: true, // Center the title
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.black),
          onPressed: () {
            // Close action
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Colors.red,
                    padding: const EdgeInsets.only(
                        top: 15, bottom: 15, left: 20, right: 75),
                    child: const Text(
                      'Super Cool you are creating a new recipe! Let\'s get started!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        buildInputField(
                            label: 'Recipe Name',
                            placeholder: 'Enter the recipe name'),
                        buildInputField(
                            label: 'Estimation',
                            placeholder: 'Enter the estimation on minutes',
                            keyboardType: TextInputType.number),
                        buildInputField(
                            label: 'Description',
                            placeholder: 'Enter the description',
                            height: 3),
                        buildInputField(
                            label: 'Ingredients and Steps',
                            placeholder: 'Enter the ingredients and steps',
                            height: 5),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(10.0), // Adjust the radius as needed
              ),
              minWidth: double.infinity,
              color: Colors.red,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              onPressed: () {
                // Save action
              },
              child: const Text(
                'Add Menu',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
