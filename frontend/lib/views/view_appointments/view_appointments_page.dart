import 'package:flutter/material.dart';
import 'package:frontend/remote/entities/responses/time_slot.dart';
import 'package:frontend/views/view_appointments/data_sources.dart';
import 'package:frontend/views/view_appointments/view_appointments_viewmodel.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:frontend/views/book_appointment/book_appointment_page.dart';
import 'package:frontend/remote/entities/responses/appointment.dart' as entity;

class ViewAppointmentsPage extends StatefulWidget {
  const ViewAppointmentsPage({super.key});

  @override
  State<ViewAppointmentsPage> createState() => _ViewAppointmentsPageState();
}

class _ViewAppointmentsPageState extends State<ViewAppointmentsPage> {
  List<TimeSlot> slots = [];

  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();
    Provider.of<ViewAppointmentsViewmodel>(context, listen: false)
        .getAvailableTimeSlots();
    Provider.of<ViewAppointmentsViewmodel>(context, listen: false)
        .getAllAppointments();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ViewAppointmentsViewmodel>(
        builder: (context, viewAppointmentsViewmodel, child) {
      return Column(
        children: [
          SfCalendar(
              view: CalendarView.month,
              dataSource: TimeSlotDataSource(
                  viewAppointmentsViewmodel.consultationSlots),
              onTap: (calendarTapDetails) {
                showModalBottomSheet(
                    showDragHandle: true,
                    context: context,
                    builder: (context) {
                      return BookAppointmentPage(
                          selectedDate: calendarTapDetails.date!);
                    });
              }),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Appointments"),
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: viewAppointmentsViewmodel.appointments.length,
                itemBuilder: (context, index) {
                  return AppointmentItemView(
                    appointment: viewAppointmentsViewmodel.appointments[index],
                  );
                }),
          ),
        ],
      );
    });
  }
}

class AppointmentItemView extends StatelessWidget {
  final entity.Appointment appointment;

  const AppointmentItemView({super.key, required this.appointment});

  @override
  Widget build(BuildContext context) {
    var datetime = DateTime.parse(appointment.consultation.availableDateTime);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(appointment.disease.diseaseName),
              Text(DateFormat('MMM d, yyyy').format(datetime))
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    'Doctor Name - ${appointment.consultation.doctor.doctorName}'),
                Text('At ${DateFormat('h:mm a').format(datetime)}')
              ],
            )
          ]),
        ),
      ),
    );
  }
}
