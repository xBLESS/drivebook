import 'package:drivebook/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final TextEditingController _tecName = TextEditingController();
  final TextEditingController _tecPassword = TextEditingController();

  bool checkControllers() => _tecName.text.isEmpty || _tecPassword.text.isEmpty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              TextField(
                controller: _tecName,
                decoration: const InputDecoration(
                  label: Text('Username'),
                ),
              ),
              TextField(
                controller: _tecPassword,
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: const InputDecoration(
                  label: Text('Password'),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  if (!checkControllers()) {
                    Provider.of<UserProvider>
                  }
                },
                child: const Text('Login'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
