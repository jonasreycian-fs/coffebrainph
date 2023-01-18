import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../coffee_router.dart';
import '../services/services.dart';
import '../widgets/src/button.dart';
import 'home.dart';

class LogoutScreen extends StatefulWidget {
  const LogoutScreen();

  static String routeName = 'Logout';

  @override
  _LogoutScreenState createState() => _LogoutScreenState();
}

class _LogoutScreenState extends State<LogoutScreen> {
  final AnalyticsService _analyticsService = AnalyticsService();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Center(
          child: Column(
            children: <Widget>[
              SvgPicture.asset(
                'assets/coffee_break.svg',
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                semanticsLabel: 'Wired Brain Coffee',
                fit: BoxFit.fitWidth,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: CommonButton(
            onPressed: () {
              _analyticsService.logLogoutPressed();
              CoffeeRouter.instance.pushAndRemoveUntil(HomeScreen.route());
            },
            text: 'Logout',
          ),
        ),
      ],
    );
  }
}
