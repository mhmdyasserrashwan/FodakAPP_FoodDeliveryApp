import 'package:flutter/material.dart';
import 'package:ta_fooddeliveryapp/models/food_item.dart';

class FoodGriditem extends StatelessWidget {
  final FoodItem food;
  const FoodGriditem({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white10, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Image.asset(
              food.imageUrl,
              width: 100,
              height: 100,
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 8.5,
            ),
            Text(
              food.foodName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              '\$ ${food.price}',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.deepOrange,
              ),
            )
          ],
        ),
      ),
    );
  }
}
