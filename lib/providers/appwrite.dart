import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:flutter/widgets.dart';

class AppwriteClient extends ChangeNotifier {
  Client _client = Client();
  late User _user;

  static const String vehicleTableId = '62b75495553a2b937482';

  AppwriteClient() {
    _client
        .setEndpoint('https://api.suffernet.de/v1') // Your Appwrite Endpoint
        .setProject('62b75477b72f937add68') // Your project ID
        .setSelfSigned(status: true);
  }

  Client get getAppwriteClient => _client;
  User get getLoggedInUser => _user;

  Future addUser() async {
    Account acc = Account(_client);

    try {
      return await acc.create(
        userId: 'unique()',
        email: 'tw@appwrite.com',
        password: 'password',
        name: 'Test-User1',
      );
    } on Exception catch (e) {
      await acc.createSession(
        email: 'tw@appwrite.com',
        password: 'password',
      );

      _user = await acc.get();
      return _user;
    }
  }
}
