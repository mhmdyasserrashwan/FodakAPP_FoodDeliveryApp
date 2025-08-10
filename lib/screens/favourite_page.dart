import 'package:flutter/material.dart';
import 'package:ta_fooddeliveryapp/models/food_item.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    final List<FoodItem> favourteitems = food
        .where(
          (element) => element.isFavourite == true,
        )
        .toList();
    if (favourteitems.isEmpty) {
      return Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/empty_state.png',
              height: 350,
              fit: BoxFit.cover,
            ),
            Text(
              'No favorite food found',
              style: TextTheme.of(context).headlineLarge,
            ),
          ],
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: favourteitems.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Image.network(
                    favourteitems[index].imageUrl,
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
                        favourteitems[index].foodName,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        '\$ ${favourteitems[index].price}',
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
                          final targetItem = favourteitems[index];
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
        },
      ),
    );
  }
}
