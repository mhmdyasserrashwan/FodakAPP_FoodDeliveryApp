import 'package:flutter/material.dart';
import 'package:ta_fooddeliveryapp/models/food_item.dart';
import 'package:ta_fooddeliveryapp/widgets/food_grid_item.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.28,
                'assets/images/classic_burger.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemCount: food.length,
              itemBuilder: (context, index) => FoodGriditem(
                food: food[index],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
