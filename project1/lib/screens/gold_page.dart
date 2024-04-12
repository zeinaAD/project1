import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/utilities/constants.dart';
import 'package:project1/widgets/G_appbar.dart';

class GoldScreen extends StatefulWidget {
  const GoldScreen({super.key});

  @override
  State<GoldScreen> createState() => _GoldScreenState();
}

class _GoldScreenState extends State<GoldScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentColor,
      body: Column(
        children: [
          G_AppBar(),
        ],
      ),
    );
  }
}
