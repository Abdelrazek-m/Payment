// ignore_for_file: prefer_const_constructors

import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/views/widgets/custom_app_bar.dart';

import 'widgets/thank_you_view_data.dart';

class ThinkYouView extends StatelessWidget {
  const ThinkYouView({super.key});
  static String id = '/thinkYouView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(''),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            ThankYouViewData(),
            Positioned(
              bottom: MediaQuery.of(context).size.height * .2,
              left: -20,
              right: -20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CircleAvatar(radius: 20, backgroundColor: Colors.white),
                  DottedDashedLine(
                      height: 20,
                      width: MediaQuery.of(context).size.width - 100,
                      axis: Axis.horizontal),
                  CircleAvatar(radius: 20, backgroundColor: Colors.white),
                ],
              ),
            ),
            Positioned(
              top: -50,
              left: 0,
              right: 0,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Color(0xffD9D9D9),
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Color(0xff34A853),
                  child: Icon(
                    Icons.done,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}