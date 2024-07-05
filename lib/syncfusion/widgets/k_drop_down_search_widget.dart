import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/core.dart';

class KDropDownSearchWidget<T> extends HookConsumerWidget {
  const KDropDownSearchWidget({
    super.key,
    this.selectedItem,
    this.hintText,
    this.labelText,
    this.enabled = true,
    this.contentPadding =
        const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
    this.containerMargin,
    this.fillColor = Colors.transparent,
    this.borderColor = Colors.transparent,
    this.initialBorderColor = Colors.transparent,
    this.hintTextStyle,
    this.asyncItems,
    this.itemAsString,
    this.compareFn,
    this.onChanged,
    this.items = const [],
    this.popupProps,
    this.focusNode,
    this.validator,
    this.onSaved,
    this.borderRadius = 8,
  });

  final T? selectedItem;
  final String? hintText, labelText;
  final bool enabled;
  final EdgeInsets? contentPadding, containerMargin;
  final Color initialBorderColor, borderColor;
  final Color? fillColor;
  final TextStyle? hintTextStyle;
  final Future<List<T>> Function(String)? asyncItems;
  final String Function(T)? itemAsString;
  final bool Function(T, T)? compareFn;
  final void Function(T?)? onChanged;
  final List<T> items;
  final PopupProps<T>? popupProps;
  final FocusNode? focusNode;
  final String? Function(T?)? validator;
  final void Function(T?)? onSaved;
  final double borderRadius;

  @override
  Widget build(BuildContext context, ref) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius.r),
      borderSide: BorderSide(
        color: initialBorderColor,
        width: 0,
      ),
    );

    return Focus(
      focusNode: focusNode,
      child: DropdownSearch<T>(
        popupProps: popupProps ??
            PopupProps.menu(
              showSelectedItems: true,
              fit: FlexFit.loose,
              menuProps: const MenuProps(
                backgroundColor: AppColors.white,
                elevation: 0,
              ),
              itemBuilder: (context, item, isSelected) => SizedBox(
                height: 56.h,
                child: ListTile(
                  leading: Container(
                    width: isSelected ? 2.5.w : 0,
                    color: AppColors.primary[900],
                  ),
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    itemAsString!(item),
                    style: AppTextStyle.bodyNSemibold16px
                        .colorSet(AppColors.primary[900]),
                  ),
                  shape: ContinuousRectangleBorder(
                    side: BorderSide(
                      width: .5.w,
                      color: AppColors.primary[900] ?? Colors.transparent,
                    ),
                  ),
                ),
              ),
            ),
        items: items,
        selectedItem: selectedItem,
        itemAsString: itemAsString,
        enabled: enabled,
        validator: validator,
        autoValidateMode: AutovalidateMode.onUserInteraction,
        dropdownButtonProps: DropdownButtonProps(
          icon: Images.iconArrowSquareDownBig.assetSvg(),
        ),
        dropdownDecoratorProps: DropDownDecoratorProps(
          baseStyle: AppTextStyle.bodyNSemibold16px.colorSet(
            AppColors.primary[900],
          ),
          dropdownSearchDecoration: InputDecoration(
            hintText: hintText,
            hintStyle: hintTextStyle,
            labelText: labelText,
            labelStyle: AppTextStyle.bodyNSemibold16px.colorSet(
              AppColors.primary[900],
            ),
            contentPadding: contentPadding,
            fillColor: AppColors.primary[200],
            border: border,
            enabledBorder: border,
            focusedBorder: border.copyWith(
              borderSide: BorderSide(
                color: borderColor,
              ),
            ),
            disabledBorder: border.copyWith(
              borderSide: const BorderSide(
                color: Colors.transparent,
              ),
            ),
            filled: true,
            suffixIcon: Images.iconArrowSquareDownBig.assetSvg(
              height: 24.h,
              width: 24.w,
            ),
          ),
        ),
        asyncItems: asyncItems,
        compareFn: compareFn,
        onChanged: onChanged,
        onSaved: onSaved,
      ),
    );
  }
}
