// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:payment/views/think_you_view.dart';
import 'package:payment/widgets/custom_app_bar.dart';
import 'package:payment/widgets/custom_credit_card.dart';
import '../widgets/custom_button.dart';
import '../widgets/payment_method_list_view.dart';

class PaymentDetailsView extends StatefulWidget {
  const PaymentDetailsView({super.key});
  static String id='/detailsView';
  @override
  State<PaymentDetailsView> createState() => _PaymentDetailsViewState();
}

class _PaymentDetailsViewState extends State<PaymentDetailsView> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar('Patment Details'),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
                child: SizedBox(
              height: 62,
              child: PaymentMethodListView(),
            )),
            SliverToBoxAdapter(child: CustomCreditCard(formKey: formKey, autovalidateMode: autovalidateMode,)),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16),
                    child: CustomButton(text: 'Pay', onTap: () {
                      if(formKey.currentState!.validate()){
                        formKey.currentState!.save();
                      }else{
                        autovalidateMode=AutovalidateMode.always;
                        setState(() {
                          
                        });
                      }
                      Navigator.pushNamed(context, ThinkYouView.id);
                    }),
                  )),
            ),
          ],
        ));
  }
} 