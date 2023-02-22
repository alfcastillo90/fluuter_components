import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Mario',
    'Zelda',
    'Metroid',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview type 2'),
        ),
        body: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              final game = options[index];
              return ListTile(
                title: Text(game),
                subtitle: const Text('Subtitle'),
                leading: const Icon(Icons.ac_unit),
                trailing: const Icon(Icons.keyboard_arrow_right),
                onTap: () => print('Tapped $game'),
              );
            },
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}
