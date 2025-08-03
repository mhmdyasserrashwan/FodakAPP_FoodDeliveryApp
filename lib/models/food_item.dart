class FoodItem {
  final String foodName;
  final String imageUrl;
  final double price;
  final bool isFavourite;

  FoodItem({
    required this.foodName,
    required this.imageUrl,
    required this.price,
    this.isFavourite = false,
  });

  FoodItem copyWith(
      {String? foodName, String? imageUrl, double? price, bool? isFavourite}) {
    return FoodItem(
        foodName: foodName ?? this.foodName,
        imageUrl: imageUrl ?? this.imageUrl,
        price: price ?? this.price,
        isFavourite: isFavourite ?? this.isFavourite);
  }
}

List<FoodItem> food = [
  FoodItem(
    foodName: 'Beef Burger',
    imageUrl:
        'https://www.freepnglogos.com/uploads/burger-png/download-hamburger-burger-png-image-png-image-pngimg-15.png',
    price: 5.5,
  ),
  FoodItem(
    foodName: 'Chicken Burger',
    imageUrl: 'https://www.pngarts.com/files/3/Chicken-Burger-PNG-Photo.png',
    price: 6.5,
  ),
  FoodItem(
      foodName: 'Cheese Burger',
      imageUrl: 'https://www.pngarts.com/files/3/Chicken-Burger-PNG-Photo.png',
      price: 4.5),
  FoodItem(
      foodName: 'Jucy Lucy Burger',
      imageUrl:
          'https://www.freepnglogos.com/uploads/burger-png/download-hamburger-burger-png-image-png-image-pngimg-15.png',
      price: 8.5),
  FoodItem(
    foodName: 'Pasta',
    imageUrl:
        'https://www.pngall.com/wp-content/uploads/2018/04/Pasta-PNG-Image.png',
    price: 10,
  ),
  FoodItem(
      foodName: 'Pizza',
      imageUrl:
          'https://graficsea.com/wp-content/uploads/2021/12/Chicken-Supreme-Pizza-.png',
      price: 11),
  FoodItem(
      foodName: 'Beef Burger',
      imageUrl:
          'https://www.freepnglogos.com/uploads/burger-png/download-hamburger-burger-png-image-png-image-pngimg-15.png',
      price: 5.5),
];
