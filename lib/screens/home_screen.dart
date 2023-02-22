import 'package:flutter/material.dart';
import 'package:fluuter_components/router/app_routes.dart';
import 'package:fluuter_components/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter components'),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                title: Text(menuOptions[index].name),
                subtitle: Text(menuOptions[index].name),
                leading: Icon(menuOptions[index].icon, color: AppTheme.primary),
                trailing: const Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, menuOptions[index].route);
                });
          },
          separatorBuilder: (_, __) => const Divider(),
          itemCount: AppRoutes.menuOptions.length),
    );
  }
}
