import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:routesprovider/data/models/settings_data.dart';
import 'package:routesprovider/data/models/user_model.dart';
import 'package:routesprovider/routes/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ((context) => UserModel()),
        ),
        ChangeNotifierProvider(
          create: ((context) => SettingsData()),
        ),
      ],
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: RouteManager.loginPage,
          onGenerateRoute: RouteManager.generateRoute,
        );
      },
    );
  }
}
