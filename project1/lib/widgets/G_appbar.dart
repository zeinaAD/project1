import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/utilities/constants.dart';
import 'package:project1/widgets/search_aboutD.dart';
import 'package:project1/widgets/search_aboutG.dart';
import 'package:project1/widgets/search_field.dart';

class G_AppBar extends StatefulWidget {
  const G_AppBar({super.key});

  @override
  State<G_AppBar> createState() => _G_AppBarState();
}

class _G_AppBarState extends State<G_AppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
     // backgroundColor: const Color.fromARGB(255, 37, 37, 37),
     backgroundColor: kourcolor1,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},

        iconSize: 30,
        icon: const Icon(
          Icons.grid_view,
          color: kcontentColor,
        ),
      ),
      actions: [
        SearchG(),
        IconButton(
          onPressed: () {},

          iconSize: 30,
          icon: const Icon(
            Icons.shopping_cart,
            color: kcontentColor,
          ),
        ),
     //   SearchField(), // Add the SearchField widget here
      ],
    );
  }
}