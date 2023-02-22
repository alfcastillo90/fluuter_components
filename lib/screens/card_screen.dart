import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(
              imageUrl:
                  'https://lacgeo.com/sites/default/files/la_gran_sabana_venezuela_opt.jpg',
              name: 'La Gran Sabana'),
          SizedBox(height: 10),
          CustomCardType2(
              imageUrl:
                  'https://www.planetware.com/photos-large/VEN/venezuela-angel-falls-morning-view.jpg',
              name: 'Angel Falls'),
          SizedBox(height: 10),
          CustomCardType2(
              imageUrl:
                  'https://www.lifeberrys.com/img/article/landscapes-in-venezuela-5-1587713220-lb.jpg'),
        ],
      ),
    );
  }
}
