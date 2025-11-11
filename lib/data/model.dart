class Coffee {
  final String coffeeName;
  final double price;
  final double rating;
  final String decription;
  final String imageURL;

  Coffee({
    required this.coffeeName,
    required this.price,
    required this.rating,
    required this.decription,
    required this.imageURL,
  });

  static List<Coffee> coffeeList = [
    Coffee(
      price: 4.5,
      coffeeName: 'Cappuccino',
      rating: 4.8,
      imageURL: 'asset/images/coffee_4.jpg',
      decription: 'With Oat Milk',
    ),
    Coffee(
      price: 3.75,
      coffeeName: 'Espresso',
      rating: 4.7,
      imageURL: 'asset/images/coffee_6.jpg',
      decription: 'With Milk',
    ),

    Coffee(
      price: 2.5,
      coffeeName: 'Latte',
      rating: 4.6,
      imageURL: 'asset/images/coffee_3.jpg',
      decription: 'With Oat Milk',
    ),
    Coffee(
      price: 3,
      coffeeName: 'Americano',
      rating: 4.4,
      imageURL: 'asset/images/coffee_7.jpg',
      decription: 'With Oat Milk',
    ),
    Coffee(
      price: 2.85,
      coffeeName: 'Mocha',
      rating: 4.9,
      imageURL: 'asset/images/coffee_5.jpg',
      decription: 'With Oat Milk.',
    ),
  ];
}
