import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../coffee_router.dart';
import '../constants.dart';
import '../widgets/src/button.dart';
import 'login.dart';
import 'register.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = 'homeScreen';
  static Route<HomeScreen> route() {
    return MaterialPageRoute<HomeScreen>(
      settings: RouteSettings(name: routeName),
      builder: (BuildContext context) => HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset(
              Strings.logoAsset,
              height: 150,
              width: 150,
            ),
            SvgPicture.asset(
              Strings.hangoutAsset,
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              semanticsLabel: Strings.wbc,
              fit: BoxFit.fitWidth,
            ),
            Text(
              Strings.theBestCoffee,
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CommonButton(
                  onPressed: () {
                    CoffeeRouter.instance.push(
                      RegisterScreen.route(),
                    );
                  },
                  text: Strings.register,
                  highlighColor: true,
                ),
                SizedBox(width: 20),
                CommonButton(
                  onPressed: () {
                    CoffeeRouter.instance.push(
                      LoginScreen.route(),
                    );
                  },
                  text: Strings.login,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
