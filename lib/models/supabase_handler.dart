import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseController {
  final supabase = SupabaseClient('https://nndnsnxtnjzbluwkgblj.supabase.co',
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5uZG5zbnh0bmp6Ymx1d2tnYmxqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTY4NTQ5MzcsImV4cCI6MTk3MjQzMDkzN30.7eHtP8mZkLSQinm8s8gvpagHrQIiKsPSQBwQ8xYoW6g');

  SupabaseClient get getSupabaseClient => supabase;

  Session? _session;
  Session? get getCurrentSession => _session;

  User? _user;
  User? get getCurrentUser => _user;

  User? getUser() {
    return _user = supabase.auth.user();
  }

  Future<Session?> getSession() async {
    return _session = supabase.auth.session();
  }

  Future<User?> loginUser(String username, String password) async {
    final res = await supabase.auth.signIn(email: username, password: password);

    _user = res.data?.user;
    final error = res.error;

    return _user;
  }

  Future<User?> loginUserComplete(String username, String password) async {
    final sessionRes = await getSession();
    if (sessionRes != null) {
      return sessionRes.user;
    } else {
      return await loginUser(username, password);
    }
  }

  Future<GotrueResponse> logoutUser() async {
    final res = await supabase.auth.signOut();

    final error = res.error;
    return res;
  }

  Future updateUser(String password) async {
    final res = await supabase.auth.update({password: password});
  }
}
