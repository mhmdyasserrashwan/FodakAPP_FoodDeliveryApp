import 'package:flutter/material.dart';
import 'package:ta_fooddeliveryapp/models/food_item.dart';

class FoodFavouriteCardItem extends StatefulWidget {
  //final FoodItem favCardFoodItem;
  final int favoIndex;
  const FoodFavouriteCardItem({super.key, required this.favoIndex});

  @override
  State<FoodFavouriteCardItem> createState() => _FoodFavouriteCardItemState();
}

class _FoodFavouriteCardItemState extends State<FoodFavouriteCardItem> {
  final List<FoodItem> favourteitems = food
      .where(
        (element) => element.isFavourite == true,
      )
      .toList();
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.network(
              favourteitems[widget.favoIndex].imageUrl,
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
                  favourteitems[widget.favoIndex].foodName,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  '\$ ${favourteitems[widget.favoIndex].price}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.deepOrange,
                  ),
                ),
              ],
            ),
            const Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    final targetItem = favourteitems[widget.favoIndex];
                    int targetedindex = food.indexOf(targetItem);
                    food[targetedindex] =
                        food[targetedindex].copyWith(isFavourite: false);
                    favourteitems.remove(targetItem);
                  });
                },
                icon: Icon(
                  Icons.favorite,
                  color: Colors.deepOrange,
                ))
          ],
        ),
      ),
    );
  }
}
