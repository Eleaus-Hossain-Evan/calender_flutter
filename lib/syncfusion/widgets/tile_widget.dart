import 'package:calender_flutter/core/core.dart';
import 'package:calender_flutter/syncfusion/app/provider.dart';
import 'package:calender_flutter/syncfusion/widgets/edit_event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../event.dart';

class TileWidget extends StatelessWidget {
  const TileWidget({
    super.key,
    required this.event,
  });

  final Event event;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // margin: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        color: event.isComplete ? AppColors.blueGray[100] : AppColors.white,
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(
          color: AppColors.borderColor,
        ),
      ),
      clipBehavior: Clip.hardEdge,
      child: Row(
        children: [
          Container(
            width: 3.w,
            height: double.infinity,
            color: event.isComplete
                ? AppColors.blueGray[400]
                : AppColors.gray[300],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(4.w),
              child: ListView(
                children: [
                  TitleWidget(event: event),
                  if (!event.isComplete)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        8.verticalSpace,
                        chipCheck(),
                        6.verticalSpace,
                        chip(type: event.type!),
                      ],
                    ),
                  4.verticalSpace,
                  Text(
                    '${event.from.toFormatDate('HH:mm')} - ${event.to.toFormatDate('HH:mm')}',
                    style: AppTextStyle.labelSMedium10px,
                    textAlign: TextAlign.start,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container chip({required EventType type}) {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        color: type.color[50],
        boxShadow: [
          BoxShadow(
            // color: AppColors.success
            color: const Color(0xff2F2F2F).withOpacity(.19),
            blurRadius: 3.r,
            spreadRadius: 0,
            offset: Offset(0, 1.h),
          )
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Row(
        children: [
          Container(
            width: 4.w,
            height: double.infinity,
            color: type.color,
          ),
          4.horizontalSpace,
          type.icon.assetSvg(width: 12.w, height: 12.h),
          4.horizontalSpace,
          Text(
            type.text,
            overflow: TextOverflow.clip,
            softWrap: true,
            style: AppTextStyle.labelSMedium10px.copyWith(
              color: type.color[600],
              overflow: TextOverflow.fade,
            ),
          ),
        ],
      ),
    );
  }

  Container chipCheck() {
    return Container(
      height: 24.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        color: AppColors.success[50],
        boxShadow: [
          BoxShadow(
            // color: AppColors.success
            color: const Color(0xff2F2F2F).withOpacity(.19),
            blurRadius: 3.r,
            spreadRadius: 0,
            offset: Offset(0, 1.h),
          )
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Row(
        children: [
          Container(
            width: 4.w,
            height: double.infinity,
            color: AppColors.success,
          ),
          4.horizontalSpace,
          Images.iconCheckBox.assetSvg(width: 12.w, height: 12.h),
          4.horizontalSpace,
          Text(
            "Check-in",
            style: AppTextStyle.labelSMedium10px.copyWith(
              color: AppColors.success[600],
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWidget extends HookConsumerWidget {
  const TitleWidget({
    super.key,
    required this.event,
  });

  final Event event;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            event.subject.text,
            style: AppTextStyle.bodyXSSemibold12px,
          ),
        ),
        // 2.horizontalSpace,
        // InkWell(
        //   onTap: () {},
        //   child: Padding(
        //     padding: const EdgeInsets.fromLTRB(2, 4, 0, 4),
        //     child: Images.iconArrowSquareDown.assetSvg(),
        //   ),
        // ),

        PopupMenuButton<CalendarTileOption>(
          color: AppColors.white,
          elevation: 4.h,
          onSelected: (value) => switch (value) {
            CalendarTileOption.delete => showCupertinoModalPopup<void>(
                context: context,
                barrierColor: const Color(0xff565656).withOpacity(.7),
                builder: (context) => EventDelete(
                  onTapYes: () {
                    ref.read(dataSourceProvider.notifier).remove(event);
                  },
                ),
              ),
            CalendarTileOption.edit => showCupertinoModalPopup(
                context: context,
                barrierColor: const Color(0xff565656).withOpacity(.7),
                builder: (context) => EditEvent(event: event),
              ),
          },
          offset: Offset(0.0, 20.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
          itemBuilder: (ctx) => CalendarTileOption.values
              .map(
                (e) => PopupMenuItem(
                  value: e,
                  child: Center(
                    child: Text(
                      e.text,
                      style: AppTextStyle.bodyXSMedium12px.colorSet(
                        AppColors.gray[800],
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
          child: Center(
            // padding: const EdgeInsets.fromLTRB(2, 4, 0, 4),
            child: Images.iconArrowSquareDown.assetSvg(),
          ),
        )
      ],
    );
  }
}

class EventDelete extends StatelessWidget {
  const EventDelete({
    super.key,
    required this.onTapYes,
  });

  final void Function()? onTapYes;

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(
        'Event deletion!',
        textAlign: TextAlign.center,
        style: AppTextStyle.titleNBold24px.colorSet(AppColors.primary[600]),
      ),
      content: Text(
        "You are about to remove the event from the calendar. Do you want to go ahead with it?",
        textAlign: TextAlign.center,
        style: AppTextStyle.labelNBold12px.colorSet(AppColors.primary[600]),
      ),
      actions: [
        CupertinoDialogAction(
          onPressed: () {
            Navigator.pop(context);
            onTapYes?.call();
          },
          child: Text(
            'Yes',
            style: TextStyle(
              color: AppColors.blueLight[600],
              fontSize: 17.sp,
            ),
          ),
        ),
        CupertinoDialogAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'No',
            style: TextStyle(
              color: AppColors.blueLight[600],
              fontSize: 17.sp,
            ),
          ),
        ),
      ],
    );
  }
}

enum CalendarTileOption {
  edit("Edit"),
  delete("Delete");

  final String text;
  const CalendarTileOption(this.text);
}
