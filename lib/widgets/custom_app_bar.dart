
  import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/utils/styles.dart';

AppBar customAppBar(String title) {
    
    return AppBar(
      leading: LeadinAppBar(title: title),
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Text(title, style: MyStyles.styleBold24),
    );
  }

class LeadinAppBar extends StatelessWidget {
  const LeadinAppBar({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: (){
          if(title!='My Cart'){
            Navigator.pop(context);
          }
        },
        child: SvgPicture.asset(
          'assets/images/arrow.svg',
          height: 24,
        ),
      ),
    );
  }
}

