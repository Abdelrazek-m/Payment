// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/views/widgets/custom_button.dart';

import 'custom_button_bloc_consumer.dart';
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 62, child: PaymentMethodListView()),
          CustomButtomBlocConsumer(),
        ],
      ),
    );
  }
}
