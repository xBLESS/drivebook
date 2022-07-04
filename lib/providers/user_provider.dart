import 'package:drivebook/models/supabase_handler.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

class UserProvider extends ChangeNotifier {
  late final User _user;
  final BuildContext context;

  UserProvider(this.context);

  User get getUser => _user;

  Future<User> login(String username, String password) async {
    // final res = await Provider.of<SupabaseController>
    //     .auth
    //     .signIn(email: 'example@email.com', password: 'example-password');

    final res = await Provider.of<SupabaseController>(context)
        .loginUser(username, password);

    return _user = res!;
  }

  Future<User> updateUser(String email) async {
    return await Provider.of<SupabaseController>(context)
        .auth
        .update({email: email});
  }

  // Future<List<Vehicle>> getTestVehicles() async {
  //   return [
  //     Vehicle(
  //       iId: '1',
  //       strManufacturer: 'BMW',
  //       strModel: 'E30',
  //       strImageUrl: 'https://i.auto-bild.de/mdb/extra_large/44/e30-00d.jpg',
  //     ),
  //   ];
  // }

}
