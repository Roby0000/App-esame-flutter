import 'package:app_esame/src/presentation/auth/views/auth_view.dart';
import 'package:app_esame/src/presentation/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabase = Supabase.instance.client;
User? get user => supabase.auth.currentUser;
void goTo(BuildContext context, Widget destination) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => destination,
    ),
  );
}

void ifUserDoesntExists(BuildContext context) {
  if (user == null) {
    goTo(context, const AuthConnector());
  }
}

void ifUserExists(BuildContext context) {
  if (user != null) {
    goTo(context, const HomeConnector());
  }
}
