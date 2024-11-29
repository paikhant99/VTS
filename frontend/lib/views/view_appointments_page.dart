import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:frontend/views/book_appointment_page.dart';

class ViewAppointmentsPage extends StatefulWidget {
  const ViewAppointmentsPage({super.key});

  @override
  State<ViewAppointmentsPage> createState() => _ViewAppointmentsPageState();
}

class _ViewAppointmentsPageState extends State<ViewAppointmentsPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: fix for data objects
    return Column(
      children: [
        SfCalendar(
            view: CalendarView.month,
            onTap: (calendarTapDetails) {
              if (calendarTapDetails.targetElement ==
                  CalendarElement.calendarCell) {
                final DateTime? selectedDate = calendarTapDetails.date;
                print("${selectedDate?.day}");
                showModalBottomSheet(
                  showDragHandle: true,
                  context: context, 
                  builder: (context){
                  return const BookAppointmentPage();
                });
              }
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
