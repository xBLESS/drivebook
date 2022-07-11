import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:flutter/widgets.dart';

class AppwriteClient extends ChangeNotifier {
  static const String vehicleTableId = '62b75495553a2b937482';

  final Client _client = Client();
  User? _user;
  Account? _account;
  Session? _session;

  Exception? _exception;

  Client get getAppwriteClient => _client;
  User? get getLoggedInUser => _user;
  Exception? get getErrorMessage => _exception;
  set setException(Exception? value) => _exception = value;

  AppwriteClient() {
    _client
        .setEndpoint('https://api.suffernet.de/v1') // Your Appwrite Endpoint
        .setProject('62b75477b72f937add68'); // Your project ID
    // .setSelfSigned(status: true);

    _account = Account(_client);
  }

  Future<bool> addUser() async {
    try {
      await _account!.create(
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
      _session = await _account!.createSession(
        email: email,
        password: password,
      );

      _user = await _account!.get();

      notifyListeners();
      return _session!;
    } on Exception catch (e) {
      _exception = e;
      return _session!;
    }
  }
}
