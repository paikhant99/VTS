import 'package:flutter/material.dart';
import 'package:frontend/remote/entities/responses/vaccination.dart';
import 'package:frontend/views/view_vaccination/view_vaccination_viewmodel.dart';
import 'package:frontend/views/view_vaccination_details_dialog.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ViewVaccinationHistory extends StatefulWidget {
  const ViewVaccinationHistory({super.key});

  @override
  State<ViewVaccinationHistory> createState() => _ViewVaccinationHistoryState();
}

class _ViewVaccinationHistoryState extends State<ViewVaccinationHistory> {
  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();
    Provider.of<ViewVaccinationViewmodel>(context, listen: false)
        .getAllVaccinations();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ViewVaccinationViewmodel>(
        builder: (context, viewVaccinationViewmodel, child) {
      return ListView.builder(
          itemCount: viewVaccinationViewmodel.vaccinations.length,
          itemBuilder: (context, index) {
            return VaccinationDetailsItemView(
              vaccination: viewVaccinationViewmodel.vaccinations[index],
            );
          });
    });
  }
}

class VaccinationDetailsItemView extends StatelessWidget {
  final Vaccination vaccination;

  const VaccinationDetailsItemView({super.key, required this.vaccination});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) => ViewVaccinationDetailsDialog(
                  vaccination: vaccination,
                ));
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text('Vaccine Name - ${vaccination.vaccine.vaccineName}'),
              Text(
                  'Doctor Name - ${vaccination.appointment.consultation.doctor.doctorName}'),
              Text(
                  'Received at ${DateFormat('h:mm a').format(DateTime.parse(vaccination.appointment.consultation.availableDateTime))}')
            ],
          ),
        ),
      ),
    );
  }
}
