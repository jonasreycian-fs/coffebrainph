import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../coffee_router.dart';
import '../const.dart';
import '../widgets/button.dart';
import 'login.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = 'homeScreen';
  static Route<HomeScreen> route() {
    return MaterialPageRoute<HomeScreen>(
      settings: RouteSettings(name: routeName),
      builder: (BuildContext context) => HomeScreen(),
    );
  }

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final loginScaffoldKey = GlobalKey<ScaffoldState>();

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
                      LoginScreen.route(loginScaffoldKey),
                    );
                  },
                  text: Strings.register,
                  highlighColor: true,
                ),
                SizedBox(width: 20),
                CommonButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      LoginScreen.route(loginScaffoldKey),
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
