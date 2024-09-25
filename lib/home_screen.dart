import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {
      'title': 'Malai Boti',
      'ingredients':
          'Boneless chicken breast (cut into cubes), Fresh cream, yogurt, ginger-garlic paste, lemon juice, green chili paste, black pepper, red chili powder, garam masala powder, cumin powder, cornflour, Salt, oil or ghee.',
      'instructions':
          'In a large bowl, mix yogurt, fresh cream, ginger-garlic paste, lemon juice, green chili paste, black pepper, red chili powder, garam masala, cumin powder, cornflour, and salt. Add the boneless chicken cubes to the marinade and mix well, ensuring all the chicken pieces are fully coated. Cover and let it marinate for at least 2 hours (or overnight for best results) in the refrigerator. Heat oil or ghee in a pan or grill pan. Cook the marinated chicken on medium heat, stirring occasionally, until the chicken is fully cooked and tender, usually about 10-12 minutes. Alternatively, you can grill the chicken on skewers for a more traditional BBQ flavor. Serve hot with naan, paratha, or rice, along with mint chutney or raita.',
      'image':
          'https://www.chilitochoc.com/wp-content/uploads/2022/11/chicken-malai-boti-with-green-chutney-1.jpg'
    },
    {
      'title': 'Horchata',
      'ingredients':
          'long-grain white rice (uncooked), water, almond milk, sugar, cinnamon stick, vanilla extract, cold water, Ice for serving, Ground cinnamon',
      'instructions':
          'Rinse the rice in a fine mesh strainer to remove excess starch. In a large bowl, combine the rice, 2 cups of water, and the cinnamon stick, and let it soak at room temperature for 4-6 hours or overnight for best results. After soaking, remove the cinnamon stick and pour the rice and soaking water into a blender. Blend the mixture until the rice is finely ground, about 1-2 minutes, creating a creamy and thick consistency. Strain the blended mixture using a fine mesh strainer or cheesecloth into a large pitcher to remove the rice solids and leave behind the creamy liquid. Stir in the sugar, almond milk (optional for creaminess), vanilla extract, and 4 cups of cold water, mixing well until the sugar is fully dissolved. Adjust the sweetness as needed. Refrigerate the horchata for at least 1-2 hours until cold. Serve over ice and garnish with a sprinkle of ground cinnamon for a traditional touch.',
      'image':
          'https://www.wineenthusiast.com/wp-content/uploads/2023/11/11_23_Homemade_Horchata_HERO_Stocksy_4950749_1920x1280.jpg'
    },
    {
      'title': 'Gajar Ka Halwa',
      'ingredients':
          'carrots, full-fat milk, ghee, Sugar, green cardamom pods, khoya, chopped nuts, raisins, cardamom powder',
      'instructions':
          'Wash and peel the carrots, then grate them finely. In a heavy-bottomed pan, add the grated carrots and milk. Cook the mixture on medium heat, stirring occasionally to prevent burning, until the milk evaporates and the carrots are soft, which can take about 45 minutes to 1 hour. Once the milk has evaporated, add ghee to the pan. Stir well and continue to cook for another 10-15 minutes, allowing the carrots to absorb the ghee and enhance the flavor. Add sugar and crushed cardamom pods (or cardamom powder) to the carrot mixture. Stir constantly and cook for another 10-15 minutes until the sugar dissolves and the mixture thickens. If you are using khoya, crumble it and add it to the halwa at this stage. Cook for an additional 5-7 minutes until the khoya is well incorporated and the halwa becomes rich and creamy. Add the chopped nuts and raisins, and mix well. Cook for another 5 minutes, allowing the nuts and raisins to soften and blend into the halwa. Once the halwa reaches the desired consistency (thick and rich), remove it from the heat. Garnish with additional chopped nuts and serve warm.',
      'image':
          'https://kitchenmai.com/wp-content/uploads/2022/01/gajar_halwa1_blog.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Book'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]['title']!),
            onTap: () {
              // Navigate to DetailsScreen and pass the selected recipe
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    recipe: recipes[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
