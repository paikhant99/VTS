import 'package:flutter/material.dart';
import 'package:frontend/local/user_preferences.dart';
import 'package:frontend/remote/api_service.dart';
import 'package:frontend/repository/appointment_repository.dart';
import 'package:frontend/repository/consultation_repository.dart';
import 'package:frontend/repository/disease_repository.dart';
import 'package:frontend/repository/user_repository.dart';
import 'package:frontend/repository/vaccination_repository.dart';
import 'package:frontend/views/book_appointment/book_appointment_viewmodel.dart';
import 'package:frontend/views/user_data_provider.dart';
import 'package:frontend/views/login/login_viewmodel.dart';
import 'package:frontend/views/register_patient/register_patient_viewmodel.dart';
import 'package:frontend/views/splash/splash_screen.dart';
import 'package:frontend/views/view_appointments/view_appointments_viewmodel.dart';
import 'package:frontend/views/view_vaccination/view_vaccination_viewmodel.dart';
import 'package:provider/provider.dart';

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
        Provider<UserPreferences>(create: (_) => UserPreferences()),
        ProxyProvider<ApiService, UserRepository>(
          update: (context, apiService, __) => UserRepositoryImpl.namedPrivate(
              apiService: apiService,
              userPreferences:
                  Provider.of<UserPreferences>(context, listen: false)),
        ),
        ProxyProvider<ApiService, AppointmentRepository>(
          update: (context, apiService, __) =>
              AppointmentRepositoryImpl.namedPrivate(
            apiService: apiService,
          ),
        ),
        ProxyProvider<ApiService, ConsultationRepository>(
            update: (context, apiService, __) =>
                ConsultationRepositoryImpl.namedPrivate(
                    apiService: apiService)),
        ProxyProvider<ApiService, DiseaseRepository>(
            update: (context, apiService, __) =>
                DiseaseRepositoryImpl.namedPrivate(apiService: apiService)),
        ProxyProvider<ApiService, VaccinationRepository>(
            update: (context, apiService, __) =>
                VaccinationRepositoryImpl.namedPrivate(apiService: apiService)),
        ChangeNotifierProvider(
            create: (context) => UserDataProvider.namedPrivate(
                userRepo: Provider.of<UserRepository>(context, listen: false))),
        ChangeNotifierProxyProvider(
            create: (context) => RegisterPatientViewmodel.namedPrivate(
                userRepo: Provider.of<UserRepository>(context, listen: false)),
            update: (_, userRepo, registerPatientViewModel) =>
                registerPatientViewModel!),
        ChangeNotifierProxyProvider(
            create: (context) => BookAppointmentViewmodel.namedPrivate(
                userDataProvider:
                    Provider.of<UserDataProvider>(context, listen: false),
                consultationRepo:
                    Provider.of<ConsultationRepository>(context, listen: false),
                diseaseRepo:
                    Provider.of<DiseaseRepository>(context, listen: false),
                appointmentRepo:
                    Provider.of<AppointmentRepository>(context, listen: false)),
            update: (_, diseaseRepo, bookAppointmentViewModel) =>
                bookAppointmentViewModel!),
        ChangeNotifierProxyProvider(
            create: (context) => LoginViewmodel(
                userDataProvider:
                    Provider.of<UserDataProvider>(context, listen: false),
                userRepo: Provider.of<UserRepository>(context, listen: false)),
            update: (_, userRepo, loginViewModel) => loginViewModel!),
        ChangeNotifierProxyProvider(
            create: (context) => ViewAppointmentsViewmodel.namedPrivate(
                userDataProvider:
                    Provider.of<UserDataProvider>(context, listen: false),
                consultationRepo:
                    Provider.of<ConsultationRepository>(context, listen: false),
                appointmentRepo:
                    Provider.of<AppointmentRepository>(context, listen: false)),
            update: (_, userRepo, viewAppointmentsViewmodel) =>
                viewAppointmentsViewmodel!),
        ChangeNotifierProxyProvider(
            create: (context) => ViewVaccinationViewmodel.namedPrivate(
                userDataProvider:
                    Provider.of<UserDataProvider>(context, listen: false),
                vaccinationRepo:
                    Provider.of<VaccinationRepository>(context, listen: false)),
            update: (_, vaccinationRepo, viewVaccinationsViewmodel) =>
                viewVaccinationsViewmodel!)
      ],
      child: MaterialApp(
        title: 'VTS App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
