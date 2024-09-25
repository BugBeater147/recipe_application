import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Map<String, String> recipe;

  DetailsScreen({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe['title']!),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              if (recipe.containsKey('image')) // Check if the image key exists
                SizedBox(
                  height: 200, // Set a fixed height to avoid overflow
                  child: Image.network(
                    recipe['image']!,
                    fit: BoxFit.cover, // Ensure the image fits inside the box
                  ),
                ),
              SizedBox(height: 16),
              Text(
                'Ingredients:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 8),
              Text(recipe['ingredients']!),
              SizedBox(height: 16),
              Text(
                'Instructions:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 8),
              Text(recipe['instructions']!),
            ],
          ),
        ),
      ),
    );
  }
}
