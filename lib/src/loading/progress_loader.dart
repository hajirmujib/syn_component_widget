import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:syn_common_widget/syn_ui.dart';

import 'loading_indicator.dart';

enum Status { DEFAULT, SUCCESS, FAILED, WARNING, CANCELED }

Future<void> showSnackBar(
  BuildContext context,
  String message,
  Status status,
) async {
  late Widget icon;
  late Color backgroundColor;
  switch (status) {
    case Status.SUCCESS:
      backgroundColor = CommonColors.green;
      icon = const Icon(
        AppIcons.ic_close,
        color: Colors.white,
        size: 18,
      );
      break;
    case Status.WARNING:
      backgroundColor = Colors.yellow;
      icon = const Icon(
        Icons.warning,
        color: Colors.black45,
        size: 18,
      );
      break;
    case Status.FAILED:
      backgroundColor = Colors.red;
      icon = const Icon(
        Icons.close,
        color: Colors.red,
        size: 18,
      );
      break;
    case Status.DEFAULT:
      backgroundColor = Colors.white;
      icon = const Icon(
        Icons.close,
        color: Colors.red,
        size: 18,
      );
      break;
    case Status.CANCELED:
      backgroundColor = Colors.white;
      icon = const Icon(
        Icons.close,
        color: Colors.red,
        size: 18,
      );
      break;
  }
  final snackBar = SnackBar(
    backgroundColor: backgroundColor,
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    behavior: SnackBarBehavior.floating,
    content: Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              message,
              style: AppTypography.smallRegular.copyWith(
                color: CommonColors.white,
              ),
            ),
          ),
        ),
        icon,
      ],
    ),
  );

  ScaffoldMessenger.of(context)
    ..clearSnackBars()
    ..showSnackBar(snackBar);
}

bool _isShowing = false;
Future<bool> showLoading(BuildContext context, String message,
    {bool isDismissable = false}) async {
  _isShowing = true;
  return await showDialog<bool>(
        context: context,
        barrierDismissible: isDismissable,
        builder: (context) {
          return Dialog(
            child: Container(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                        width: 40, height: 40, child: LoadingIndicator()),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Expanded(
                      child: Text(message),
                    )
                  ],
                )),
          );
        },
      ) ??
      !_isShowing;
}

dissmissLoading(BuildContext context) {
  log('context $context');
  if (_isShowing) {
    _isShowing = false;
    try {
      Navigator.pop(context);
      log('context dismiss');
    } catch (error) {
      log('context dismiss error $error');
      Navigator.of(context).dispose();
    }
  }
}
