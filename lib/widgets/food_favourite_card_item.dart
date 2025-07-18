import 'package:flutter/material.dart';
import 'package:ta_fooddeliveryapp/models/food_item.dart';

class FoodFavouriteCardItem extends StatelessWidget {
  final FoodItem favCardFoodItem;
  const FoodFavouriteCardItem({super.key, required this.favCardFoodItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.network(
              favCardFoodItem.imageUrl,
              height: 70,
              width: 100,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  favCardFoodItem.foodName,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  '\$ ${favCardFoodItem.price}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.deepOrange,
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.favorite,
              color: Colors.deepOrange,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
