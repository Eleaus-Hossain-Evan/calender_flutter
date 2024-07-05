import 'package:calender_flutter/syncfusion/event.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../core/core.dart';

class EventDataSource extends CalendarDataSource {
  EventDataSource(List<Event> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  @override
  String getSubject(int index) {
    return appointments![index].subject.text;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background ?? Colors.transparent;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }

  @override
  Event convertAppointmentToObject(customData, appointment) {
    final data = customData as Event;
    return Event(
      from: appointment.startTime,
      to: appointment.endTime,
      subject: Subject.fromText(appointment.subject)!,
      background: appointment.color,
      isAllDay: appointment.isAllDay,
      type: data.type,
    );
  }
}

List<Event> getDataSource() {
  final List<Event> meetings = <Event>[];
  final DateTime today = DateTime.now();
  final DateTime startTime = today;
  final DateTime endTime = startTime.add(const Duration(hours: 2));
  meetings.add(
    Event(
      subject: Subject.languageArt,
      type: EventType.testPrep,
      from: startTime,
      to: endTime,
      background: Colors.blue,
      isAllDay: false,
    ),
  );

  return meetings;
}
