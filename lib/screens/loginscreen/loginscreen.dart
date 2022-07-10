import 'package:drivebook/providers/appwrite.dart';
import 'package:drivebook/screens/homescreen/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  static const String routename = '/login';

  final TextEditingController _tecUsername = TextEditingController();
  final TextEditingController _tecPassword = TextEditingController();

  LoginScreen({Key? key}) : super(key: key) {
    _tecUsername.text = 'tw@appwrite.com';
    _tecPassword.text = 'password';
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<AppwriteClient>(context);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Spacer(flex: 3),
              TextField(
                controller: _tecUsername,
                decoration: const InputDecoration(
                  label: Text('Username'),
                ),
              ),
              TextField(
                autocorrect: false,
                controller: _tecPassword,
                decoration: const InputDecoration(
                  label: Text('Password'),
                ),
                enableSuggestions: false,
                obscureText: true,
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          userProvider.loginUser(_tecUsername.text, _tecPassword.text);
          // ToDo Der benutzer soll nicht vom Hauptbildschirm zum LoginScreen zurückkehren sollen
          Navigator.popAndPushNamed(context, MyHomePage.routename);
        },
        label: const Text('Login'),
      ),
    );
  }
}
