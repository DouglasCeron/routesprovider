import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:routesprovider/data/models/user_model.dart';
import 'package:routesprovider/routes/route_manager.dart';

import '../../data/models/settings_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.watch<SettingsData>().appColor,
        title: const Text('HomePage'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(RouteManager.settingsPage);
            },
            icon: const Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: Center(
        child: Consumer<UserModel>(
          builder: (context, value, child) {
            return Text(
              'Welcome ${value.getName}',
            );
          },
        ),
      ),
    );
  }
}
