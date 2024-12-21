import 'package:flutter/material.dart';
import 'package:frontend/views/user_data_provider.dart';
import 'package:frontend/views/splash/splash_screen.dart';
import 'package:frontend/views/view_appointments/view_appointments_page.dart';
import 'package:frontend/views/view_vaccination/view_vaccination_history.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  late List<Widget> pages = [];

  void onSelectPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<UserDataProvider>(builder: (context, homeViewmodel, child) {
      if (!homeViewmodel.isLoggedIn) {
        Future.delayed(const Duration(seconds: 5), () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const SplashScreen()));
        });
      }

      pages = <Widget>[
        const ViewAppointmentsPage(),
        const ViewVaccinationHistory(),
      ];
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Name - ${homeViewmodel.username}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'DOB - ${homeViewmodel.dateOfBirth}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      'Gender - ${homeViewmodel.gender}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        body: Center(child: pages.elementAt(_selectedIndex)),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today), label: 'Appointment'),
            BottomNavigationBarItem(
                icon: Icon(Icons.history), label: 'History'),
          ],
          currentIndex: _selectedIndex,
          onTap: onSelectPage,
        ),
      );
    });
  }
}
