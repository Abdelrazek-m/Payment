// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment/core/utils/styles.dart';
import 'package:payment/features/checkout/presentation/views/widgets/thank_view_into.dart';
import 'package:payment/features/checkout/presentation/views/widgets/total_price.dart';

class ThankYouViewData extends StatelessWidget {
  const ThankYouViewData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 22,
        right: 22,
        top: 76,
      ),
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFFD9D9D9),
      ),
      child: Column(
        children: [
          Text('Thank you!', style: MyStyles.style24),
          Text('Your transaction was successful',
              style: MyStyles.styleOpacity20),
          SizedBox(height: 42),
          ThankViewIInfo(title: 'Date', value: '01/24/2023'),
          SizedBox(height: 20),
          ThankViewIInfo(title: 'Date', value: '01/24/2023'),
          SizedBox(height: 20),
          ThankViewIInfo(title: 'Date', value: '01/24/2023'),
          Divider(height: 60, thickness: 3),
          TotalPrice(title: 'Total', price: 50.97),
          SizedBox(height: 30),
          Container(
            height: 73,
            padding: EdgeInsets.symmetric(horizontal: 23, vertical: 16),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                SvgPicture.asset('assets/images/masterCard.svg'),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Credit Card', style: MyStyles.style18),
                    Text('Mastercard **78', style: MyStyles.style16)
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 87),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset('assets/images/qrCode.svg'),
              Container(
                width: 113,
                height: 58,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.50, color: Color(0xFF34A853)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                  child: Text('PAID',
                      style: MyStyles.styleBold24
                          .copyWith(color: Color(0xFF34A853))),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
