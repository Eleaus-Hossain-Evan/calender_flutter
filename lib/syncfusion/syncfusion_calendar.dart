import 'package:calender_flutter/core/core.dart';
import 'package:calender_flutter/syncfusion/app/provider.dart';
import 'package:calender_flutter/syncfusion/event.dart';
import 'package:calender_flutter/syncfusion/widgets/custom_view_header.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import 'data_source.dart';
import 'widgets/tile_widget.dart';

final calenderProvider = Provider((ref) => CalendarController());
final eventsProvider =
    Provider((ref) => EventDataSource(ref.watch(dataSourceProvider).unlock));

class SyncfusionCalendarScreen extends HookConsumerWidget {
  const SyncfusionCalendarScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedDay = useState(DateTime.now());

    final controller = ref.watch(calenderProvider);
    final dataSource = ref.watch(dataSourceProvider);
    final events = ref.watch(eventsProvider);

    final dateList = useState<List<DateTime>>([]);

    useEffect(() {
      SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
        // controller.selectedDate = DateTime.now();
      });

      return null;
    }, []);

    bool isOverlapping(Event newEvent) {
      for (var e in events.appointments!) {
        final event = e as Event;
        if (newEvent.from.isBefore(event.to) &&
            newEvent.to.isAfter(event.from)) {
          return true;
        }
      }
      return false;
    }

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton.filled(
            onPressed: () {
              ref.read(dataSourceProvider.notifier).add();
              // events.notifyListeners(CalendarDataSourceAction.add, [app]);
              // visibleAppointments.value.add(app);
            },
            icon: const Icon(Icons.add, color: AppColors.white),
          )
        ],
      ),
      body: Column(
        children: [
          //. Header view
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Builder(builder: (context) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List<Widget>.generate(
                  dateList.value.length,
                  (index) {
                    final date = dateList.value[index];
                    return Padding(
                      padding: EdgeInsets.only(right: 36.w),
                      child: CustomViewHeader(
                        date: date,
                        isSelected:
                            date.withoutTime == selectedDay.value.withoutTime,
                        appointmentCount: dataSource
                            .where(
                                (e) => (e).from.withoutTime == date.withoutTime)
                            .length,
                        onTap: () {
                          controller.selectedDate = date;
                          selectedDay.value = date;
                        },
                      ),
                    );
                  },
                )
                    .lock
                    .add(SizedBox(width: 50.w))
                    .whereMoveToTheStart(
                      (item) => item is SizedBox,
                    )
                    .unlock,
              );
            }),
          ),
          Expanded(
            child: SfCalendar(
              controller: controller,
              view: CalendarView.day,
              firstDayOfWeek: 1,
              initialDisplayDate: selectedDay.value.withoutTime,
              initialSelectedDate: selectedDay.value.withoutTime,
              dataSource: EventDataSource(dataSource.unlock),
              timeSlotViewSettings: TimeSlotViewSettings(
                numberOfDaysInView: 4,
                timeFormat: 'HH:mm',
                timeTextStyle:
                    AppTextStyle.labelNMedium12px.colorSet(AppColors.gray[400]),
                // timelineAppointmentHeight: 250.h,
                timeInterval: const Duration(minutes: 30),
                minimumAppointmentDuration: const Duration(minutes: 30),
                timeIntervalHeight: 74.h,
                timeIntervalWidth: 95.w,
                nonWorkingDays: const <int>[],
              ),
              appointmentBuilder: (context, details) {
                final Event event = details.appointments.first;
                return TileWidget(event: event);
              },
              viewHeaderHeight: 0,
              headerHeight: 0,
              onViewChanged: (viewChangedDetails) {
                SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
                  dateList.value = viewChangedDetails.visibleDates;
                  // List<DateTime> dates = viewChangedDetails.visibleDates;
                  // String calendarTimeZone = '';
                  // visibleAppointments.value = events.getVisibleAppointments(
                  //     dates[0],
                  //     calendarTimeZone,
                  //     dates[(viewChangedDetails.visibleDates.length) - 1]);
                });
              },
              monthViewSettings: const MonthViewSettings(showAgenda: true),
            ),
          ),
        ],
      ),
    );
  }
}
