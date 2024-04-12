import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/utilities/constants.dart';
import 'package:project1/widgets/search_aboutD.dart';
import 'package:project1/widgets/search_field.dart';

class D_AppBar extends StatefulWidget {
  const D_AppBar({super.key});

  @override
  State<D_AppBar> createState() => _D_AppBarState();
}

class _D_AppBarState extends State<D_AppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xA5FFFFFF),
      elevation: 0,
      leading: Stack(
        children: [
          IconButton(
            onPressed: () {},
            iconSize: 30,
            icon: const Icon(
              Icons.more_vert_outlined,
              color: kourcolor1,
            ),
          ),
          Positioned(
            left: 40, // Adjust this value to add space between icons
            right: 30,
            top: 0,
            child: IconButton(
              onPressed: () {},
              iconSize: 30,
              icon: const Icon(
                Icons.mail_outline,
                color: kourcolor1, // Change color as needed
              ),
            ),
          ),
        ],
      ),
      title: Text(
        'Diamond',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: kourcolor1,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          iconSize: 30,
          icon: const Icon(
            Icons.notifications_active_outlined,
            color: kourcolor1,
          ),
        ),
        SizedBox(
          width: 2,
        ),
        IconButton(
          onPressed: () {},
          iconSize: 30,
          icon: const Icon(
            Icons.shopping_cart_outlined,
            color: kourcolor1,
          ),
        ),
      ],
    );
  }
}
