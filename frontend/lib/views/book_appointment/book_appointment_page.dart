import 'package:flutter/material.dart';
import 'package:frontend/remote/entities/responses/disease.dart';
import 'package:frontend/remote/entities/responses/time_slot.dart';
import 'package:frontend/views/book_appointment/book_appointment_viewmodel.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class BookAppointmentPage extends StatefulWidget {
  final DateTime selectedDate;

  const BookAppointmentPage({super.key, required this.selectedDate});

  @override
  State<BookAppointmentPage> createState() => _BookAppointmentPageState();
}

class _BookAppointmentPageState extends State<BookAppointmentPage> {
  Disease? _diseaseSelectedItem;
  TimeSlot? _consultationSelectedItem;

  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();
    Provider.of<BookAppointmentViewmodel>(context, listen: false)
        .getAllDiseases();
    Provider.of<BookAppointmentViewmodel>(context, listen: false)
        .getConsultationSlotsByDate(widget.selectedDate.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BookAppointmentViewmodel>(
        builder: (context, bookAppointmentViewmodel, child) {
      _consultationSelectedItem =
          bookAppointmentViewmodel.consultationSlots.isNotEmpty
              ? bookAppointmentViewmodel.consultationSlots[0]
              : null;

      return SizedBox(
        height: 400,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Disease Type for Vaccination',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<Disease>(
                  hint: const Text("Search"),
                  value: _diseaseSelectedItem,
                  items: bookAppointmentViewmodel.diseases
                      .map<DropdownMenuItem<Disease>>((Disease value) {
                    return DropdownMenuItem<Disease>(
                      value: value,
                      child: Text(value.diseaseName),
                    );
                  }).toList(),
                  onChanged: (Disease? value) {
                    setState(() {
                      _diseaseSelectedItem = value!;
                    });
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Choose a Time',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount:
                          bookAppointmentViewmodel.consultationSlots.length,
                      itemBuilder: (context, index) {
                        return RadioListTile(
                            title: Text(bookAppointmentViewmodel
                                .consultationSlots[index].doctor.doctorName),
                            subtitle: Text(
                                "At ${DateFormat('h:mm a').format(DateTime.parse(bookAppointmentViewmodel.consultationSlots[index].availableDateTime))}"),
                            value: bookAppointmentViewmodel
                                .consultationSlots[index],
                            groupValue: _consultationSelectedItem,
                            onChanged: (value) {
                              setState(() {
                                _consultationSelectedItem = value!;
                              });
                            });
                      })),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: (bookAppointmentViewmodel
                                  .consultationSlots.isNotEmpty &&
                              bookAppointmentViewmodel.diseases.isNotEmpty)
                          ? () async {
                              if (_diseaseSelectedItem != null) {
                                final result =
                                    await Provider.of<BookAppointmentViewmodel>(
                                            context,
                                            listen: false)
                                        .createAppointment(
                                            _consultationSelectedItem!
                                                .timeSlotId
                                                .toString(),
                                            _diseaseSelectedItem!.diseaseId
                                                .toString());
                                result.when((appointment) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text(
                                              "Appointment Has Reserved, Check on Appointments.")));
                                  Future.delayed(const Duration(seconds: 5),
                                      () => Navigator.pop(context));
                                }, (error) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(
                                              "Appointment Has Failed, Check on $error")));
                                });
                                Navigator.pop(context);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text(
                                            "Choose a valid Desease Type")));
                              }
                            }
                          : null,
                      child: const Text("RESERVE")),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
