import 'package:flutter/material.dart';
import 'package:whats_app_clone/common/extension/custom_theme_extension.dart';
import 'package:whats_app_clone/common/utils/colors.dart';

showLoadingDialog({
  required BuildContext context,
  required String message,
}) async {
  await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const CircularProgressIndicator(
                    color: Coloors.greenDark,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Text(
                      message,
                      style: TextStyle(
                          fontSize: 15,
                          color: context.theme.greyColor,
                          height: 1.5),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      });
}
