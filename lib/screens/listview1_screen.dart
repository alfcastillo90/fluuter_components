import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Mario',
    'Zelda',
    'Metroid',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview type 1'),
        ),
        body: ListView(
          children: [
            ...options.map((game) => ListTile(
                  title: Text(game),
                  subtitle: const Text('Subtitle'),
                  leading: const Icon(Icons.ac_unit),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () => print('Tapped $game'),
                ))
          ],
        ));
  }
}
