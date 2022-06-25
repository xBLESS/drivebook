import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:flutter/widgets.dart';

class AppwriteClient extends ChangeNotifier {
  Client _client = Client();

  AppwriteClient() {
    _client
        .setEndpoint('https://api.suffernet.de/v1') // Your Appwrite Endpoint
        .setProject('62b75477b72f937add68') // Your project ID
        .setSelfSigned(status: true);
  }

  Client get getAppwriteClient => _client;

  Future addUser() async {
    Account acc = Account(_client);

    try {
      print('add');
      return await acc.create(
        userId: 'unique()',
        email: 'tw@appwrite.de',
        password: 'password',
        name: 'Test-User',
      );
    } on Exception catch (e) {
      print('get');
      Session ses = await acc.createSession(
        email: 'tw@appwrite.de',
        password: 'password',
      );
      return await acc.get();
    }
  }
}
