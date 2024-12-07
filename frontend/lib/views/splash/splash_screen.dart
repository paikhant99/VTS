import 'package:flutter/material.dart';
import 'package:frontend/views/home/home_screen.dart';
import 'package:frontend/views/login/login_screen.dart';
import 'package:frontend/views/splash/splash_viewmodel.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Provider.of<SplashViewmodel>(context, listen: false)
            .checkLoggedInStatus(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final isLoggedIn =
                Provider.of<SplashViewmodel>(context, listen: false).isLoggedIn;
            return isLoggedIn ? const HomeScreen() : const LoginScreen();
          }
          return const Center(child: CircularProgressIndicator());
        });
  }
}
