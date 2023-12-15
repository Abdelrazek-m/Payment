
import 'package:flutter/material.dart';

import 'payment_method_list_view.dart';

class CustomModalBottomSheet extends StatelessWidget {
  const CustomModalBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      width: double.infinity,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 62, child: PaymentMethodListView()),
        ],
      ),
    );
  }
}