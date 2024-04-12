import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/utilities/constants.dart';
import 'package:project1/widgets/D_appbar.dart';
import 'package:project1/widgets/search_aboutD.dart';

class DiamondScreen extends StatefulWidget {
  const DiamondScreen({super.key});

  @override
  State<DiamondScreen> createState() => _DiamondScreenState();
}

class _DiamondScreenState extends State<DiamondScreen>
    with TickerProviderStateMixin {
  List<String> assets = [
    'images/diam1.jpg',
    'images/gold1.jpg',
    'images/ring.jpg',
    //'images/gold1.jpg',
    // 'images/gold1.jpg'
  ];
  final color = [
    Color(0xA5FFFFFF),
    Color(0xA5FFFFFF),
    Color(0xA5FFFFFF),
    // Colors.blueGrey,
    // Colors.blue,
  ];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 223, 222, 217),
      body: Column(
        children: [
          D_AppBar(),
          SizedBox(
            height: 15,
          ),
          SearchD(),

          SizedBox(
            height: 15,
          ),

          SizedBox(
            height: 150,
            width: MediaQuery.of(context).size.width,
            child: PageView.builder(
              itemCount: assets.length,
              physics: BouncingScrollPhysics(),
              controller: PageController(initialPage: 0, viewportFraction: 0.7),
              onPageChanged: (value) {
                currentindex = value;
                setState(() {});
              },
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(8),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      //  color: color[index],
                      borderRadius: BorderRadius.circular(25)),
                  child: Image.asset(
                    assets[index],
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          TabPageSelector(
            controller: TabController(
                length: assets.length, initialIndex: currentindex, vsync: this),
            selectedColor: kourcolor1,
            color: Color.fromARGB(164, 255, 255, 255),
            borderStyle: BorderStyle.none,
          ),
          SizedBox(
            height: 15,
          ),

          //    SearchD(),
        ],
      ),
    );
  }
}
