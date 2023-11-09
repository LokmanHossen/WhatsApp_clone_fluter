import 'package:flutter/material.dart';

import '../../../common/utils/colors.dart';

class PrivacyAndTerms extends StatelessWidget {
  const PrivacyAndTerms({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 22),
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          text: 'Read our',
          style: TextStyle(
            color: Coloors.greyDark,
            height: 1.5,
          ),
          children: [
            TextSpan(
              text: ' Privecy Policy',
              style: TextStyle(color: Coloors.blueDark),
            ),
            TextSpan(
              text: ' Tap " Agree and Continue " to accet the ',
            ),
            TextSpan(
              text: ' Term Of Services',
              style: TextStyle(
                color: Coloors.blueDark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
