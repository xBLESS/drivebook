import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:flutter/widgets.dart';

class AppwriteClient extends ChangeNotifier {
  Client _client = Client();

  late User _user;
  late Account _account;
  late Session _session;

  Exception? _exception;

  static const String vehicleTableId = '62b75495553a2b937482';

  AppwriteClient() {
    _client
        .setEndpoint('https://api.suffernet.de/v1') // Your Appwrite Endpoint
        .setProject('62b75477b72f937add68') // Your project ID
        .setSelfSigned(status: true);

    _account = Account(_client);
  }

  Client get getAppwriteClient => _client;
  User get getLoggedInUser => _user;
  Exception? get getErrorMessage => _exception;
  set setException(Exception? value) => _exception = value;

  Future<bool> addUser() async {
    try {
      await _account.create(
        userId: 'unique()',
        email: 'tw@appwrite.com',
        password: 'password',
        name: 'Test-User1',
      );
      notifyListeners();
      return true;
    } on Exception catch (e) {
      _exception = e;
      return false;
    }
  }

  Future<Session> loginUser(String email, String password) async {
    try {
      _session = await _account.createSession(
        email: email,
        password: password,
      );

      _user = await _account.get();

      notifyListeners();
      return _session;
    } on Exception catch (e) {
      _exception = e;
      return _session;
    }
  }
}
