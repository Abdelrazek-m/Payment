
import 'package:flutter/material.dart';

import '../core/utils/styles.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({
    super.key, required this.title, required this.price,
  });
  final String title;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: MyStyles.style18),
        Text('\$$price', style: MyStyles.style18),
      ],
    );
  }
}
