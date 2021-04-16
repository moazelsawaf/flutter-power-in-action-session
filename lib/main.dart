import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:session_demo/pages/home_page_desktop.dart';
import 'package:session_demo/pages/home_page_mobile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Session Demo',
      home: Scaffold(
        body: SafeArea(
          child: ResponsiveBuilder(builder: (context, sizingInfo) {
            print(sizingInfo.isDesktop);
            print(sizingInfo.screenSize.width);
            return ScreenTypeLayout(
              mobile: HomePageMobile(),
              desktop: HomePageDesktop(),
            );
          }),
        ),
      ),
    );
  }
}
