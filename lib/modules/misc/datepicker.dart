import '../../main_lib.dart';

import 'package:flutter/material.dart';
import 'package:flutter_cupertino_datetime_picker/flutter_cupertino_datetime_picker.dart';

import '../../providers/current_datetime_provider.dart';

class CupertinoDatePicker {

  void showDatePicker (BuildContext context, WidgetRef ref,
      final void Function(DateTime dateTime, BuildContext context, WidgetRef ref) onPressed, DateTime? initialDate) {
    DateTime dateNow = ref.watch(currentDateTimeProvider);
    DatePicker.showDatePicker(
        context,
        onMonthChangeStartWithFirstDate: true,
        pickerTheme: DateTimePickerTheme(
            showTitle: true,
            backgroundColor: context.themeColors.secondaryBackground,
            itemTextStyle: context.fontByStyle(ThemeTextStyle.headTitle),
            cancel: Icon(Icons.close, color: context.themeColors.mainText),
            confirm: Text(context.i10n.travel_app,
                key: const Key("Confirm"),
                style: context.fontByStyle(ThemeTextStyle.pickerConfirm))),
        minDateTime: dateNow.subtract(const Duration(days: 300)),
        maxDateTime: dateNow.add(const Duration(days: 300)),
        initialDateTime: (initialDate!=null) ? initialDate : dateNow,
        dateFormat: "dd-MMMM-yyyy",
        locale: DateTimePickerLocale.de,
        onConfirm: (dateTime, List<int> index) async {
           onPressed(dateTime, context, ref);
        });
  }
}
