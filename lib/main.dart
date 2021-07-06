import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '_title',
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded Column Sample'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.blue,
              height: 50,
              width: 100,
            ),
            Expanded(
              child: Container(
                color: Colors.amber,
                width: 100,
              ),
            ),
            Container(
              color: Colors.blue,
              height: 70,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }

/*  A widget that expands a child of a Row, Column, or Flex so that the child fills the available space.
  Using an Expanded widget makes a child of a Row, Column, or Flex expand to fill the available space along the main axis
  (e.g., horizontally for a Row or vertically for a Column). If multiple children are expanded, the available space is divided
  among them according to the flex factor.
  An Expanded widget must be a descendant of a Row, Column, or Flex, and the path from the Expanded widget to its
  enclosing Row, Column, or Flex must contain only StatelessWidgets or StatefulWidgets */
}
