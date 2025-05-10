import 'package:flutter/material.dart';

import 'package:todo/views/widget/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, this.title});

  final String? title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "To do ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: const HomeScreenBody(),
    );
  }
}
