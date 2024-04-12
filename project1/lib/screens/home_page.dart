import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project1/models/product.dart';
import 'package:project1/utilities/constants.dart';
import 'package:project1/widgets/categories.dart';
import 'package:project1/widgets/home_appbar.dart';
import 'package:project1/widgets/home_slider.dart';
import 'package:project1/widgets/product_card.dart';
import 'package:project1/widgets/rounded-button1.dart';
import 'package:project1/widgets/search_field.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kourcolor1, // Make scaffold background transparent
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage('images/jewe9.png'), // Your background image
                  fit: BoxFit.cover,
                ),
              ),
/*               child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  //    HomeAppBar(),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ), */
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Categories(),
                ],
              ),
            )
            /* Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15),
                  const Categories(),
                  const SizedBox(height: 1), 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Special For You",
                        style: TextStyle(
                          color: kourcolor1,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text("See all",
                        style: TextStyle(
                          color: kourcolor1,
                          fontSize: 15,
                        ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return ProductCard(product: products[index]);
                    },
                  ),
                ],
              ),
            ), */
          ],
        ),
      ),
    );
  }
}
