import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../constants.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen();

  static String routeName = 'Support';

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
