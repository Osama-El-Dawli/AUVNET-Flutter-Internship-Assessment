import 'package:auvnet/features/auth/presentation/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const String routeName = 'loginView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: LoginViewBody());
  }
}
