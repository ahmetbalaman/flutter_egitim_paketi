import 'package:flutter/material.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
    BuildContext context,
    {required String content,
    required Color renk}) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: renk,
    content: Text(content),
    duration: Duration(seconds: 2),
    showCloseIcon: true,
  ));
}
