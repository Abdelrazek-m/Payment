// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:payment/views/payment_details_view.dart';
import 'package:payment/widgets/payment_method_list_view.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_button.dart';
import '../widgets/order_into_item.dart';
import '../widgets/total_price.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('My Cart'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          children: [
            Expanded(child: Image.asset('assets/images/cart.png')),
            const SizedBox(height: 20),
            const OrderInfoItem(title: 'Order Subtotal', price: 42.97),
            const SizedBox(height: 3),
            const OrderInfoItem(title: 'Discount', price: 0),
            const SizedBox(height: 3),
            const OrderInfoItem(title: 'Shipping', price: 8),
            const Divider(thickness: 2, endIndent: 20, indent: 20, height: 30),
            const TotalPrice(
              title: 'Total',
              price: 50.97,
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: 'Complete Payment',
              onTap: () {
                // Navigator.pushNamed(context, PaymentDetailsView.id);
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)
                  ),
                  context: context,
                  builder: (ctx) => CustomModalBottomSheet(),
                );
              },
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
 
class CustomModalBottomSheet extends StatelessWidget {
  const CustomModalBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 62, child: PaymentMethodListView()),
        ],
      ),
    );
  }
}
