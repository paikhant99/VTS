import 'package:flutter/material.dart';
import 'package:frontend/backend/api_service.dart';
import 'package:frontend/repository/user_repository.dart';
import 'package:frontend/views/login/login_viewmodel.dart';
import 'package:frontend/views/register_patient/register_patient_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:frontend/views/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ApiService>(create: (_) => ApiService()),
        ProxyProvider<ApiService, UserRepository>(
          update: (_, apiService, __) =>
              UserRepositoryImpl(apiService: apiService),
        ),
        ChangeNotifierProxyProvider(
            create: (context) => RegisterPatientViewmodel(
                userRepo: Provider.of<UserRepository>(context, listen: false)),
            update: (_, userRepo, registerPatientViewModel) =>
                registerPatientViewModel!),
        ChangeNotifierProxyProvider(
            create: (context) => LoginViewmodel(
                userRepo: Provider.of<UserRepository>(context, listen: false)),
            update: (_, userRepo, loginViewModel) => loginViewModel!),
      ],
      child: MaterialApp(
        title: 'VTS App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const LoginScreen(),
      ),
    );
  }
}
