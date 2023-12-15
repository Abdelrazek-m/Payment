
import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';

class ThankViewIInfo extends StatelessWidget {
  const ThankViewIInfo({
    super.key,
    required this.title,
    required this.value,
  });
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: MyStyles.style18),
        Text(value, style: MyStyles.styleBold18),
      ],
    );
  }
}
