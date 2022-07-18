import '../../providers/appwrite.dart';
import '../homescreen/vehiclelistscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  static const String routename = '/loginScreen';

  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoading = false;

  final TextEditingController _tecUsername = TextEditingController();
  final TextEditingController _tecPassword = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tecUsername.text = 'tw@appwrite.de';
    _tecPassword.text = 'password';
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<AppwriteClient>(context);

    print('LoginScreen build ran');

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: !isLoading
              ? Column(
                  children: [
                    const Spacer(flex: 2),
                    Card(
                      // margin: const EdgeInsetsDirectional.all(5),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
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
                          ],
                        ),
                      ),
                    ),
                    const Spacer(flex: 2),
                  ],
                )
              : const CircularProgressIndicator(),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          setState(() {
            isLoading = !isLoading;
          });
          // print('login method ran');
          await userProvider
              .loginUser(_tecUsername.text, _tecPassword.text)
              .whenComplete(() {
            if (userProvider.getLoggedInUser!.email.isNotEmpty) {
              Navigator.pushNamed(context, VehicleListScreen.routename);
            }
          });
        },
        label: const Text('Login'),
      ),
    );
  }
}
