import 'package:flutter/material.dart';
import 'package:motels/app_exports.dart';

class FeedbackHandler {
  FeedbackHandler._();

  static void showSnackBar({
    required BuildContext context,
    required bool isSuccess,
    required String message,
    int millisecondsDuration = 2500,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: context.textStyles.bodyText.copyWith(color: context.colors.neutralWhite),
        ),
        backgroundColor: isSuccess ? context.colors.supportGreen : context.colors.supportYellow,
        duration: Duration(milliseconds: millisecondsDuration),
      ),
    );
  }
}
