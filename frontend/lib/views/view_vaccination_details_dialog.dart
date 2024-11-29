import 'package:flutter/material.dart';

class ViewVaccinationDetailsDialog extends StatelessWidget{
  const ViewVaccinationDetailsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Dialog(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: SizedBox(
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(child: Text('Details', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Vaccine Name - Covera'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Treated Disease - Covid 19'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Doctor Name - Dr. Alpha'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Dose Current Count - 1'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Dose Expected Total Number - 2'),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Received on Feb 20, 2024'),
              )
            ],
          ),
        ),
      ),
    );
  }
}