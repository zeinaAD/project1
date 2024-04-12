import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final String image;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;

  Product({
    required this.title,
    required this.description,
    required this.image,
    required this.price,
    required this.colors,
    required this.category,
    required this.rate,
  });
}

final List<Product> products = [
  Product(
    title: "Necklace",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/Necklace.jpg",
    price: 120,
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ],
    category: "Diamonds",
    rate: 4.8,
  ),
  Product(
    title: "Earring",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/earring.jpg",
    price: 120,
    colors: [
      Colors.brown,
      Colors.red,
      Colors.pink,
    ],
    category: "Gold",
    rate: 4.8,
  ),
  Product(
    title: "Ring",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/ring.jpg",
    price: 55,
    colors: [
      Colors.black,
    ],
    category: "Diamonds",
    rate: 4.8,
  ),
];