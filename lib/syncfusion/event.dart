import 'dart:convert';

import 'package:calender_flutter/core/utils/utils.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Event extends Equatable {
  final Subject subject;
  final EventType? type;
  final DateTime from;
  final DateTime to;
  final Color? background;
  final bool isAllDay;
  final bool isComplete;
  const Event({
    required this.subject,
    this.type,
    required this.from,
    required this.to,
    this.background,
    this.isAllDay = false,
    this.isComplete = false,
  });

  Event copyWith({
    Subject? subject,
    ValueGetter<EventType?>? type,
    DateTime? from,
    DateTime? to,
    ValueGetter<Color?>? background,
    bool? isAllDay,
    bool? isComplete,
  }) {
    return Event(
      subject: subject ?? this.subject,
      type: type != null ? type() : this.type,
      from: from ?? this.from,
      to: to ?? this.to,
      background: background != null ? background() : this.background,
      isAllDay: isAllDay ?? this.isAllDay,
      isComplete: isComplete ?? this.isComplete,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'eventName': subject,
      'type': type?.index,
      'from': from.millisecondsSinceEpoch,
      'to': to.millisecondsSinceEpoch,
      'background': background?.value,
      'isAllDay': isAllDay,
      'isComplete': isComplete,
    };
  }

  factory Event.fromMap(Map<String, dynamic> map) {
    return Event(
      subject: map['eventName'] ?? '',
      type: EventType.values[map['type']],
      from: DateTime.fromMillisecondsSinceEpoch(map['from']),
      to: DateTime.fromMillisecondsSinceEpoch(map['to']),
      background: map['background'] != null ? Color(map['background']) : null,
      isAllDay: map['isAllDay'] ?? false,
      isComplete: map['isComplete'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Event.fromJson(String source) => Event.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Event(eventName: $subject, type: $type, from: $from, to: $to, background: $background, isAllDay: $isAllDay, isComplete: $isComplete)';
  }

  @override
  List<Object?> get props {
    return [
      subject,
      type,
      from,
      to,
      background,
      isAllDay,
      isComplete,
    ];
  }
}
