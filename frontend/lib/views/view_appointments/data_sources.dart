import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../remote/entities/responses/time_slot.dart';

class TimeSlotDataSource extends CalendarDataSource {
  TimeSlotDataSource(List<TimeSlot> timeSlots) {
    appointments = timeSlots
        .map(
          (slot) => Appointment(
            startTime: DateTime.parse(slot.availableDateTime),
            endTime: DateTime.parse(slot.availableDateTime)
                .add(const Duration(hours: 2)),
            subject: 'Available',
            color: Colors.green,
          ),
        )
        .toList();
  }
}
