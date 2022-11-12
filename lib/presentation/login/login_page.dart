import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:routesprovider/routes/route_manager.dart';
import 'package:routesprovider/data/models/user_model.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  var userNameConroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                keyboardType: TextInputType.text,
                controller: userNameConroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Please enter your name',
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<UserModel>().setName = userNameConroller.text;
                  Navigator.of(context).pushNamed(RouteManager.homePage);
                  userNameConroller.clear();
                },
                child: const Text('Submit'))
          ],
        ),
      ),
    );
  }
}
