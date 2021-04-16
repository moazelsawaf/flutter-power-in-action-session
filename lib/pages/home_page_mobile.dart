import 'package:flutter/material.dart';
import 'package:session_demo/constants.dart';
import 'package:session_demo/widgets/home_page_feature.dart';

class HomePageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/background.png',
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
          color: kPrimaryColor.withOpacity(0.80),
          colorBlendMode: BlendMode.srcOver,
        ),
        SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 70),
                  Text(
                    'Join us today',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 42),
                  HomePageFeature(
                    icon: Icons.watch,
                    line1: 'Spend time smart',
                    line2:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor  ',
                  ),
                  const SizedBox(height: 24),
                  HomePageFeature(
                    icon: Icons.watch,
                    line1: 'Spend time smart',
                    line2:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor  ',
                  ),
                  const SizedBox(height: 24),
                  HomePageFeature(
                    icon: Icons.watch,
                    line1: 'Spend time smart',
                    line2:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor  ',
                  ),
                  const SizedBox(height: 24),
                  HomePageFeature(
                    icon: Icons.watch,
                    line1: 'Spend time smart',
                    line2:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor  ',
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ),
        MobileAppBar()
      ],
    );
  }
}

class MobileAppBar extends StatefulWidget {
  @override
  _MobileAppBarState createState() => _MobileAppBarState();
}

class _MobileAppBarState extends State<MobileAppBar> {
  bool _isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      padding: const EdgeInsets.all(16),
      height: _isMenuOpen ? 300 : 70,
      width: double.infinity,
      alignment: Alignment.topCenter,
      color: Colors.white,
      child: Row(
        children: [
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey.shade400,
            ),
            onPressed: () {
              setState(() {
                _isMenuOpen = !_isMenuOpen;
              });
            },
          ),
          Spacer(),
          Image.asset(
            'assets/images/logo_mini.png',
            width: 35,
            height: 35,
          ),
          Spacer(),
          Icon(
            Icons.notifications,
            color: Colors.grey.shade400,
          ),
        ],
      ),
    );
  }
}
