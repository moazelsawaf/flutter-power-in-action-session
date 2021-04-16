import 'package:flutter/material.dart';
import 'package:session_demo/constants.dart';
import 'package:session_demo/widgets/home_page_feature.dart';

class HomePageDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Image.asset(
            'assets/images/background.png',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
            color: kPrimaryColor.withOpacity(0.80),
            colorBlendMode: BlendMode.srcOver,
          ),
          Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1280),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 240,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(45),
                        bottomRight: Radius.circular(45),
                      ),
                    ),
                    child: Image.asset('assets/images/logo.png'),
                  ),
                  const SizedBox(height: 42),
                  Row(
                    children: [],
                  ),
                  const SizedBox(height: 100),
                  Text(
                    'Join us today',
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
                  Row(
                    children: [
                      Expanded(
                        child: HomePageFeature(
                          icon: Icons.watch,
                          line1: 'Spend time smart',
                          line2:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor  ',
                        ),
                      ),
                      const SizedBox(width: 24),
                      Expanded(
                        child: HomePageFeature(
                          icon: Icons.watch,
                          line1: 'Spend time smart',
                          line2:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor  ',
                        ),
                      ),
                      const SizedBox(width: 24),
                      Expanded(
                        child: HomePageFeature(
                          icon: Icons.watch,
                          line1: 'Spend time smart',
                          line2:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor  ',
                        ),
                      ),
                      const SizedBox(width: 24),
                      Expanded(
                        child: HomePageFeature(
                          icon: Icons.watch,
                          line1: 'Spend time smart',
                          line2:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor  ',
                        ),
                      ),
                      const SizedBox(width: 24),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Sign up'),
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(250, 40),
                          primary: Colors.white,
                          elevation: 0,
                          side: BorderSide(
                            color: Colors.white,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                      const SizedBox(width: 60),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Login'),
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(250, 40),
                            primary: Colors.white,
                            onPrimary: kPrimaryColor,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            )),
                      )
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
