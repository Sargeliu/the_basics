import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/views/home/home_desktop.dart';
import 'package:the_basics/views/home/home_mobile.dart';
import 'package:the_basics/widgets/centered_view/centered_view.dart';
import 'package:the_basics/widgets/navbar/navbar.dart';
import 'package:the_basics/widgets/navbar_drawer/navigation_drawer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) =>
        Scaffold(
          drawer: sizingInformation.deviceScreenType == DeviceScreenType
              .mobile ? NavDrawer() : null,
          backgroundColor: Colors.white,
          body: CenteredView(
            child: Column(
              children: [
                Navbar(),
                Expanded(
                  child: ScreenTypeLayout(
                    mobile: HomeMobile(),
                    desktop: HomeDesktop(),
                  ),
                ),
              ],
            ),
          ),
        ),);
  }
}
