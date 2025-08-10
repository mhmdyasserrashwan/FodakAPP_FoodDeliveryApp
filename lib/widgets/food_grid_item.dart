import 'package:flutter/material.dart';
import 'package:ta_fooddeliveryapp/models/food_item.dart';

class FoodGriditem extends StatefulWidget {
  //final FoodItem food;
  final int foodIndex;
  const FoodGriditem({super.key, required this.foodIndex});

  @override
  State<FoodGriditem> createState() => _FoodGriditemState();
}

class _FoodGriditemState extends State<FoodGriditem> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white60,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  food[widget.foodIndex].imageUrl,
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[100],
                    ),
                    width: 30,
                    height: 30,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          food[widget.foodIndex] = food[widget.foodIndex]
                              .copyWith(
                                  isFavourite:
                                      !food[widget.foodIndex].isFavourite);
                        });
                      },
                      child: food[widget.foodIndex].isFavourite
                          ? Icon(
                              Icons.favorite,
                              color: Theme.of(context).primaryColor,
                            )
                          : Icon(
                              Icons.favorite_border,
                              color: Theme.of(context).primaryColor,
                            ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8.5,
            ),
            Text(
              food[widget.foodIndex].foodName,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              '\$ ${food[widget.foodIndex].price}',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).primaryColor,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
