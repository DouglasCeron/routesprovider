import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:routesprovider/data/models/settings_data.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.watch<SettingsData>().appColor,
        title: const Text('SettingsPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Text(
              'Chosse color scheme for appBar',
              style: TextStyle(
                color: context.watch<SettingsData>().appColor,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<SettingsData>().appColorSet = Colors.blue;
              },
              child: const Text('Blue'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              onPressed: () {
                context.read<SettingsData>().appColorSet = Colors.purple;
              },
              child: const Text(
                'Purple',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
