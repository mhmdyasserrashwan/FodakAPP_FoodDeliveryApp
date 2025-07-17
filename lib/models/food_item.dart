class FoodItem {
  final String foodName;
  final String imageUrl;
  final double price;

  FoodItem(
      {required this.foodName, required this.imageUrl, required this.price});
}

List<FoodItem> food = [
  FoodItem(
      foodName: 'Beef Burger',
      imageUrl: 'assets/images/categories/burger.png',
      price: 5.5),
  FoodItem(
      foodName: 'Chicken Burger',
      imageUrl: 'assets/images/categories/burger.png',
      price: 6.5),
  FoodItem(
      foodName: 'Cheese Burger',
      imageUrl: 'assets/images/categories/burger.png',
      price: 4.5),
  FoodItem(
      foodName: 'Jucy Lucy Burger',
      imageUrl: 'assets/images/categories/burger.png',
      price: 8.5),
  FoodItem(
      foodName: 'Pasta',
      imageUrl: 'assets/images/categories/burger.png',
      price: 10),
  FoodItem(
      foodName: 'Pizza',
      imageUrl: 'assets/images/categories/burger.png',
      price: 11),
  FoodItem(
      foodName: 'Beef Burger',
      imageUrl: 'assets/images/categories/burger.png',
      price: 5.5),
];
