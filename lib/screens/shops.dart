import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../constants.dart';

class ShopsScreen extends StatelessWidget {
  const ShopsScreen();

  static String routeName = 'Shops';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitFadingCircle(
        color: darkBrown,
        size: 70.0,
      ),
    );
  }
}
