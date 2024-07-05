import 'dart:developer';

import 'package:calender_flutter/syncfusion/data_source.dart';
import 'package:calender_flutter/syncfusion/event.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/core.dart';

final dataSourceProvider = NotifierProvider<DataSourceNotifier, IList<Event>>(
  DataSourceNotifier.new,
  name: "dataSourceProvider",
);

class DataSourceNotifier extends Notifier<IList<Event>> {
  @override
  IList<Event> build() {
    return IList<Event>(getDataSource());
  }

  add() {
    final day = DateTime.now().withoutTime.add(const Duration(days: 2));
    final Event app = Event(
      subject: Subject.socialStudies,
      from: day,
      to: day.add(const Duration(hours: 1)),
      type: EventType.review,
    );

    if (state.any((e) {
      return app.from.isBefore(e.to) && app.to.isAfter(e.from);
    })) {
      log("Not Add notifier");
      return;
    } else {
      state = state.add(app);
    }
  }

  void remove(Event event) {
    state = state.remove(event);
  }

  void edit({
    required Event event,
    required DateTime form,
    required DateTime to,
    required Subject subject,
    EventType? type,
  }) {
    log('$event, $form, $to, $subject, $type');

    final i = state.indexOf(event);

    state = state.replace(
        i,
        event.copyWith(
          subject: subject,
          type: () => type,
          from: form,
          to: to,
        ));
  }
}
