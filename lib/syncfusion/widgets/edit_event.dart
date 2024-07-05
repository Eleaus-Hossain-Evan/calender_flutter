import 'dart:async';

import 'package:calender_flutter/core/core.dart';
import 'package:calender_flutter/syncfusion/app/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../event.dart';
import 'k_title_drop_down_field.dart';

class EditEvent extends HookConsumerWidget {
  const EditEvent({
    super.key,
    required this.event,
  });

  final Event event;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final form = useState(event.from);
    final to = useState(event.to);
    final subject = useState(event.subject);
    final type = useState(event.type);

    return Dialog(
      backgroundColor: AppColors.white,
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Edit event',
              style: AppTextStyle.tabLBold24px.colorSet(AppColors.primary[900]),
            ),
            8.verticalSpace,
            KTitleDropDownField(
              title: "Subject",
              selectedItem: event.subject,
              itemAsString: (v) => v.text,
              controller: Subject.values,
              onChanged: (v) => subject.value = v!,
            ),
            26.verticalSpace,
            KTitleDropDownField(
              title: "Task",
              selectedItem: event.type,
              itemAsString: (v) => v.fullText,
              controller: EventType.values,
              onChanged: (v) => type.value = v,
            ),
            20.verticalSpace,
            Text(
              "Timings",
              style: AppTextStyle.bodyNSemibold16px.colorSet(
                AppColors.primary[600],
              ),
            ),
            8.verticalSpace,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTimePickerButton(
                  date: event.from,
                  onTap: (date) async {
                    form.value = date;
                  },
                  onTapUpArrow: () {},
                  onTapDownArrow: () {},
                ),
                Container(
                  color: AppColors.primary[600],
                  height: 3.h,
                  width: 15.w,
                ),
                CustomTimePickerButton(
                  date: event.to,
                  onTap: (date) async {
                    to.value = date;
                  },
                  onTapUpArrow: () {},
                  onTapDownArrow: () {},
                ),
              ],
            ),
            24.verticalSpace,
            Align(
              alignment: Alignment.centerRight,
              child: FilledButton(
                onPressed: () {
                  Navigator.pop(context);
                  ref.read(dataSourceProvider.notifier).edit(
                      event: event,
                      form: form.value,
                      to: to.value,
                      subject: subject.value,
                      type: type.value);
                },
                child: const Text('Confirm'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTimePickerButton extends HookConsumerWidget {
  const CustomTimePickerButton({
    super.key,
    required this.onTap,
    required this.onTapUpArrow,
    required this.onTapDownArrow,
    required this.date,
  });

  final Future<void> Function(DateTime) onTap;
  final VoidCallback onTapUpArrow;
  final VoidCallback onTapDownArrow;
  final DateTime date;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final internalDate = useState(date);
    return Row(
      children: [
        Material(
          color: AppColors.primary[200],
          borderRadius: BorderRadius.circular(6.r),
          child: InkWell(
            onTap: () async {
              final time = TimeOfDay(hour: date.hour, minute: date.minute);
              final selectedTime =
                  await showTimePicker(context: context, initialTime: time);

              internalDate.value = DateTime(
                  date.year,
                  date.month,
                  date.day,
                  selectedTime?.hour ?? date.hour,
                  selectedTime?.minute ?? date.minute,
                  date.second);

              onTap.call(internalDate.value);
            },
            borderRadius: BorderRadius.circular(6.r),
            child: Padding(
              padding: EdgeInsets.all(16.w),
              child: Text(
                internalDate.value.toFormatDate('HH:mm'),
                style: AppTextStyle.bodyNSemibold16px
                    .colorSet(AppColors.primary[900])
                    .heightSet(1.3),
              ),
            ),
          ),
        ),
        8.horizontalSpace,
        Column(
          children: [
            InkWell(
              onTap: onTapUpArrow,
              child: Images.iconArrowUpFill.assetSvg(height: 24.h),
            ),
            4.verticalSpace,
            InkWell(
              onTap: onTapDownArrow,
              child: Images.iconArrowDownFill.assetSvg(height: 24.h),
            )
          ],
        )
      ],
    );
  }
}
