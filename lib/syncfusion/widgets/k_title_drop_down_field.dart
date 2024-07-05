import 'package:calender_flutter/core/core.dart';
import 'package:calender_flutter/syncfusion/widgets/k_drop_down_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class KTitleDropDownField<T> extends StatelessWidget {
  const KTitleDropDownField({
    super.key,
    this.controller,
    this.validator,
    required this.title,
    this.selectedItem,
    this.itemAsString,
    this.onChanged,
    this.asyncItems,
  });

  final List<T>? controller;
  final String? Function(T?)? validator;
  final String title;
  final T? selectedItem;
  final String Function(T)? itemAsString;
  final void Function(T?)? onChanged;
  final Future<List<T>> Function(String)? asyncItems;

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: AppTextStyle.bodyNSemibold16px.colorSet(
            AppColors.primary[600],
          ),
        ),
        8.verticalSpace,
        KDropDownSearchWidget<T>(
          hintText: title,
          selectedItem: selectedItem,
          items: controller ?? [],
          asyncItems: asyncItems,
          validator: validator,
          itemAsString: itemAsString,
          onChanged: onChanged,
          compareFn: (p0, p1) => p0 == p1,
        ),
      ],
    );
  }
}
