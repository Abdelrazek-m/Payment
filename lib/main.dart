import 'package:flutter/material.dart';
import 'package:payment/views/home_view.dart';
import 'package:payment/views/payment_details_view.dart';
import 'package:payment/views/think_you_view.dart';

void main() {
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