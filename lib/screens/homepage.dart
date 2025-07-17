import 'package:flutter/material.dart';
import 'package:ta_fooddeliveryapp/models/food_item.dart';
import 'package:ta_fooddeliveryapp/widgets/food_griditem.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[300],
          drawer: const Drawer(
            child: Center(
              child: Column(
                children: [
                  Text(
                    'item 1',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          appBar: AppBar(
            title: const Text("El-Ta'aam - Food Delivery"),
            centerTitle: true,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 0,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
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
                Expanded(
                  child: GridView.builder(
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
                ),
              ],
            ),
          )),
    );
  }
}
