import 'package:calender_flutter/core/core.dart';
import 'package:calender_flutter/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomViewHeader extends HookConsumerWidget {
  const CustomViewHeader({
    super.key,
    required this.date,
    this.isSelected = false,
    this.appointmentCount = 0,
    this.onTap,
  });

  final DateTime date;
  final bool isSelected;
  final int appointmentCount;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(6.r),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            // width: 20,
            // height: 40,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 11.h),
            decoration: BoxDecoration(
                color: isSelected ? AppColors.primary[600] : null,
                borderRadius: BorderRadius.circular(6.r),
                boxShadow: isSelected
                    ? [
                        BoxShadow(
                          color: AppColors.primary[600]!.withOpacity(.31),
                          offset: Offset(0, 10.h),
                          blurRadius: 11,
                          spreadRadius: -6,
                        )
                      ]
                    : null),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  date.toFormatDate('EEE'),
                  textAlign: TextAlign.center,
                  style: AppTextStyle.labelNMedium12px.copyWith(
                    color: isSelected
                        ? AppColors.primary[200]
                        : AppColors.gray[400],
                    height: 1,
                  ),
                ),
                5.verticalSpace,
                AppText(
                  date.toFormatDate('dd'),
                  textAlign: TextAlign.center,
                  style: AppTextStyle.headingH4Bold28px.copyWith(
                    color: isSelected ? AppColors.white : null,
                    height: .8,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          // padding: EdgeInsets.only(top: 8.h),
          height: 21.h,

          child: Center(
            child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 3.w,
                children: List.generate(
                  appointmentCount,
                  (index) {
                    final color = switch (index) {
                      1 => AppColors.primary[400],
                      2 => AppColors.success[400],
                      3 => AppColors.error[400],
                      4 => AppColors.blueLight[400],
                      5 => AppColors.warning[400],
                      _ => AppColors.gray[400]
                    };
                    return CircleAvatar(
                      radius: 2,
                      backgroundColor: color,
                    );
                  },
                )),
          ),
        ),
      ],
    );
  }
}
