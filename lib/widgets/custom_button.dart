

import 'package:flutter/material.dart';

import '../core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,required this.onTap
  });
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: const Color(0xff34a853)),
        width: double.infinity,
        height: 75, 
        child: Center(child: Text(text ,style: MyStyles.style22,)),
      ),
    );
  }
}