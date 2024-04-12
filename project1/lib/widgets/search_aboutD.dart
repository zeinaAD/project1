import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/utilities/constants.dart';

class SearchD extends StatefulWidget {
  const SearchD({super.key});

  @override
  State<SearchD> createState() => _SearchDState();
}

class _SearchDState extends State<SearchD> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      // width: double.infinity,
      width: 375,

      decoration: BoxDecoration(
        color: Color(0xA5FFFFFF),
        borderRadius: BorderRadius.circular(20),
        //   borderRadius: BorderRadius.horizontal(),
      ),
      padding: const EdgeInsets.symmetric(
        // horizontal: 1,
        vertical: 5,
      ),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            color: kourcolor1,
          ),
          const SizedBox(width: 10),
          const Flexible(
            flex: 4,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search ...",
                hintStyle: TextStyle(color: kourcolor1),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            height: 25,
            width: 1.5,
            color: kourcolor1,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.keyboard_option_key_sharp,
              color: kourcolor1,
            ),
          ),
        ],
      ),
    );
  }
}
