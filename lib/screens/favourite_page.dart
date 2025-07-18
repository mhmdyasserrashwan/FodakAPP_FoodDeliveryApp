import 'package:flutter/material.dart';
import 'package:ta_fooddeliveryapp/models/food_item.dart';
import 'package:ta_fooddeliveryapp/widgets/food_favourite_card_item.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<FoodItem> favourteitems = food
        .where(
          (element) => element.isFavourite == true,
        )
        .toList();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: favourteitems.length,
        itemBuilder: (BuildContext context, int index) {
          return FoodFavouriteCardItem(
            favCardFoodItem: favourteitems[index],
          );
        },
      ),
    );
  }
}
