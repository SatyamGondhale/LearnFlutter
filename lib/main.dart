import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome'),
        ),
        body: Center(
         // child: Text(wordPair.asPascalCase),
          child: TestingText(),
          // https://api.flutter.dev/flutter/material/TextButton-class.html
        ),
      ),
    );
  }
}

class TestingText extends StatelessWidget {
  const TestingText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(

      //Normal Disabled Button
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[

          // Outlined Button
         // https://api.flutter.dev/flutter/material/OutlinedButton-class.html
          OutlinedButton(
            onPressed: () {
              print('Received click');
            },
            child: const Text('Click Me'),
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20)
            ),
              onPressed: null, child: const Text('Disabled')),

          // Normal Enabled Button
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {},
            child: const Text('Enabled'),
          ),

          // Normal Button with Gradient
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF0D47A1),
                          Color(0xFF1976D2),
                          Color(0xFF42A5F5),
                        ],
                      ),
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.white,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text('Gradient'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

/*class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}*/
