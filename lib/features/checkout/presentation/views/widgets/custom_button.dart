// ignore_for_file: prefer_const_constructors, unnecessary_this

import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.isLoading=false,
  });
  final String text;
  final void Function()? onTap;
  final bool isLoading ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xff34a853)),
        width: double.infinity,
        height: 75,
        child: Center(
            child:this.isLoading?CircularProgressIndicator() : Text(
          text,
          style: MyStyles.style22,
        )),
      ),
    );
  }
}
