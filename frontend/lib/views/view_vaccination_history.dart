import 'package:flutter/material.dart';
import 'package:frontend/views/view_vaccination_details_dialog.dart';

class ViewVaccinationHistory extends StatelessWidget {
  const ViewVaccinationHistory({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement List of Vaccination History
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return const VaccinationDetailsItemView();
        });
  }
}

class VaccinationDetailsItemView extends StatelessWidget {
  const VaccinationDetailsItemView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Take Data Object as a parameter in constructor
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) =>
                const ViewVaccinationDetailsDialog());
      },
      child: const Card(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text('Vaccine Name - Covid 19'),
              Text('Doctor Name - Dr. Alpha'),
              Text('Received at 2:00 pm')
            ],
          ),
        ),
      ),
    );
  }
}
