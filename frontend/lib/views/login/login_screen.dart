import 'package:flutter/material.dart';
import 'package:frontend/views/home/home_screen.dart';
import 'package:frontend/views/login/login_viewmodel.dart';
import 'package:frontend/views/register_patient/register_patient_screen.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _userNameController, _pController;

  @override
  void initState() {
    _userNameController = TextEditingController();
    _pController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<LoginViewmodel>(builder: (context, loginViewModel, child) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _userNameController,
                    autofocus: true,
                    decoration: const InputDecoration(
                        labelText: 'Username', border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _pController,
                    obscureText: true,
                    decoration: const InputDecoration(
                        labelText: 'Password', border: OutlineInputBorder()),
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(),
                        backgroundColor: Colors.blueAccent),
                    onPressed: () async {
                      final result = await Provider.of<LoginViewmodel>(context,
                              listen: false)
                          .login(_userNameController.text, _pController.text);
                      result.when((response) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const HomeScreen()));
                      }, (error) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(error.toString())));
                      });
                    }, 
                    child: loginViewModel.loading
                        ? const CircularProgressIndicator()
                        : const Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        child: const Text('Forgot Password?'),
                        onTap: () {},
                      ),
                      InkWell(
                        child: const Text('Register'),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegisterPatientScreen()));
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
