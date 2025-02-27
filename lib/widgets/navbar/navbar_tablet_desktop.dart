import 'package:flutter/material.dart';

import 'navbar_item.dart';
import 'navbar_logo.dart';

class NavbarTabletDesktop extends StatelessWidget {
  const NavbarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavbarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem(title: 'Episodes'),
              SizedBox(width: 60,),
              NavBarItem(title: 'About')
            ],
          )
        ],
      ),
    );
  }
}
