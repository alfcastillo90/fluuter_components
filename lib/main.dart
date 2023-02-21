import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      initialRoute: 'home',
      routes: {
        'alert': (BuildContext context) => const AlertScreen(),
        'home': (BuildContext context) => const HomeScreen(),
        'card': (BuildContext context) => const CardScreen(),
        'listview1': (BuildContext context) => const ListView1Screen(),
        'listview2': (BuildContext context) => const ListView2Screen(),
      },
      title: 'Material App',
    );
  }
}
