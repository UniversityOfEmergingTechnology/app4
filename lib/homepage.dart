import 'dart:async';

import 'package:app4/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Learning about Navigations",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ),
                );
              },
              child: Text("Navigator.push"),
            ),
            ElevatedButton(
              onPressed: () {
                Timer(
                  Duration(seconds: 3),
                  () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(),
                      ),
                    );
                  },
                );
              },
              child: Text("Navigator.pushReplacement"),
            ),
            ElevatedButton(
              onPressed: () {
                Timer(
                  Duration(seconds: 3),
                  () {
                    Navigator.pushNamed(
                        context, '/second'
                    );
                  },
                );
              },
              child: Text("Navigator.pushNamed"),
            ),
          ],
        ),
      ),
    );
  }
}
