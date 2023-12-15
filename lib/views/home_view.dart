
import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_modal_bottom_sheet.dart';
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
                  builder: (ctx) => const CustomModalBottomSheet(),
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
 
