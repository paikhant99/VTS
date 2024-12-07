import 'package:flutter/material.dart';
import 'package:frontend/remote/entities/responses/time_slot.dart';
import 'package:frontend/views/view_appointments/data_sources.dart';
import 'package:frontend/views/view_appointments/view_appointments_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:frontend/views/book_appointment_page.dart';

class ViewAppointmentsPage extends StatefulWidget {
  final String token;
  const ViewAppointmentsPage({super.key, required this.token});

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
        .getAvailableTimeSlots(widget.token);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ViewAppointmentsViewmodel>(
        builder: (context, viewAppointmentsViewmodel, child) {
      return Column(
        children: [
          SfCalendar(
              view: CalendarView.month,
              dataSource:
                  TimeSlotDataSource(viewAppointmentsViewmodel.timeSlots),
              onTap: (calendarTapDetails) {
                showModalBottomSheet(
                    showDragHandle: true,
                    context: context,
                    builder: (context) {
                      return const BookAppointmentPage();
                    });
              }),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Appointments"),
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const AppointmentItemView();
                }),
          ),
        ],
      );
    });
  }
}

class AppointmentItemView extends StatelessWidget {
  const AppointmentItemView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Take Data Object as a parameter in constructor
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Covid 19'), Text('Feb 29, 2024')]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Doctor Name - Dr. Alpha'), Text('At 2:00 pm')],
            )
          ]),
        ),
      ),
    );
  }
}
