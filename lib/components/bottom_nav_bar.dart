import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GNav(
        tabMargin: EdgeInsets.symmetric(horizontal: 5),
          gap: 10,
          //backgroundColor: Colors.greenAccent,
          mainAxisAlignment: MainAxisAlignment.center,
          activeColor: Colors.grey.shade700,
          color: Colors.grey[400],
          tabActiveBorder:
              Border.all(width: 0.5, color: Colors.greenAccent.shade400),
          tabBorder: Border.all(width: 0.5, color: Colors.grey.shade300),
          tabBackgroundColor: Colors.grey.shade100,
          tabBorderRadius: 16,
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.shopping_cart,
              text: "Cart",
            )
          ]),
    );
  }
}
