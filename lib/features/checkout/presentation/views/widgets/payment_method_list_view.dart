import 'package:flutter/material.dart';

import 'custom_card_item.dart';

class PaymentMethodListView extends StatefulWidget {
  const PaymentMethodListView({
    super.key,
  });

  @override
  State<PaymentMethodListView> createState() => _PaymentMethodListViewState();
}

class _PaymentMethodListViewState extends State<PaymentMethodListView> {
  List<String> cardItems = [
    'assets/images/card.svg',
    'assets/images/paypal.svg',
    'assets/images/applePay.svg',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              currentIndex = index;
              setState(() {});
            },
            child: CustomCardItem(
                isActive: currentIndex == index, imgUrl: cardItems[index])),
        separatorBuilder: (context, index) => SizedBox(width: 20),
        itemCount: cardItems.length,
      ),
    );
  }
}
