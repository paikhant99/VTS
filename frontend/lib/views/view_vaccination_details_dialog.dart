import 'package:flutter/material.dart';
import 'package:frontend/remote/entities/responses/vaccination.dart';
import 'package:intl/intl.dart';

class ViewVaccinationDetailsDialog extends StatelessWidget {
  final Vaccination vaccination;

  const ViewVaccinationDetailsDialog({super.key, required this.vaccination});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                    child: Text(
                  'Details',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    Text('Vaccine Name - ${vaccination.vaccine.vaccineName}'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'Treated Disease - ${vaccination.appointment.disease.diseaseName}'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'Doctor Name - ${vaccination.appointment.consultation.doctor.doctorName}'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Dose Current Count - ${vaccination.dosingTime}'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'Dose Expected Total Number - ${vaccination.vaccine.totalDosage}'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'Received on ${DateFormat('MMM d, yyyy').format(DateTime.parse(vaccination.appointment.consultation.availableDateTime))}'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
