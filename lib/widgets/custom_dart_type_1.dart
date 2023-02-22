import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            title: Text('Lorem ipsum'),
            subtitle: Text(
                'Mollit nulla labore incididunt consequat id nisi cupidatat veniam dolor ullamco consequat ex. Non ut nulla ullamco officia nulla nostrud id dolor nostrud aliqua commodo ea ullamco. Occaecat deserunt consequat esse aliquip. Ea elit ad sunt aute qui pariatur. Excepteur tempor culpa enim tempor id eu consequat Lorem.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  child: const Text('Ok'),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
