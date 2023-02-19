import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

alertbox(BuildContext context) {
  QuickAlert.show(
    context: context,
    type: QuickAlertType.confirm,
    text: 'Do you want to logout',
    confirmBtnText: 'Yes',
    cancelBtnText: 'No',
    confirmBtnColor: Colors.green,
    onConfirmBtnTap: () async {},
  );
}
