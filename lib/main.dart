import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment/core/utils/api_keys.dart';
import 'package:payment/features/checkout/presentation/views/home_view.dart';
import 'package:payment/features/checkout/presentation/views/payment_details_view.dart';
import 'package:payment/features/checkout/presentation/views/think_you_view.dart';

void main() {
  Stripe.publishableKey=ApiKeys.publishableKey;
  runApp(const PaymentApp());
}

class PaymentApp extends StatelessWidget {
  const PaymentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeView.id,
      
      routes: {
        HomeView.id:(context) => const HomeView(),
        PaymentDetailsView.id:(context) =>const PaymentDetailsView(),
        ThinkYouView.id:(context) => const ThinkYouView(),
      },
    );
  }
}

