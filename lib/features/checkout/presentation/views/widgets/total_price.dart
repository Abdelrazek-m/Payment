
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({
    super.key, required this.title, required this.price,
  });
  
  final String title;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: MyStyles.styleBold24),
        Text('\$$price', style: MyStyles.styleBold24),
      ],
    );
  }
}
