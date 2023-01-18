import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'models/models.dart';

final Color darkBrown = Color(0xFFA26E47);
final Color lightBrown = Color(0xFFF9E8D4);
final Color brown = Color(0xFF9C5700);
final Color facebookColor = Color(0xFF4867AA);

final List<Coffee> coffees = [
<<<<<<< HEAD
  Coffee(coffeeIcon: FontAwesomeIcons.mugSaucer, name: 'Espresso ', price: 8),
  Coffee(coffeeIcon: FontAwesomeIcons.mugHot, name: 'Cappuccino', price: 10),
  Coffee(coffeeIcon: FontAwesomeIcons.cocktail, name: 'Mocha', price: 12),
  Coffee(coffeeIcon: FontAwesomeIcons.beer, name: 'Americano', price: 7),
  Coffee(
    coffeeIcon: FontAwesomeIcons.cocktail,
    name: 'Italian Macchiato',
    price: 5,
  ),
  Coffee(coffeeIcon: FontAwesomeIcons.coffee, name: 'Flat White', price: 3),
  Coffee(
    coffeeIcon: FontAwesomeIcons.mugHot,
    name: 'American Affogato',
    price: 11,
  ),
  Coffee(coffeeIcon: FontAwesomeIcons.coffee, name: 'Long Black', price: 4),
  Coffee(coffeeIcon: FontAwesomeIcons.mugHot, name: 'Latte', price: 12),
  Coffee(
    coffeeIcon: FontAwesomeIcons.cocktail,
    name: 'American Espresso',
    price: 9,
  ),
  Coffee(coffeeIcon: FontAwesomeIcons.beer, name: 'CAFÈ AU LAIT.', price: 10),
  Coffee(coffeeIcon: FontAwesomeIcons.coffee, name: 'AFFÈ MOCHA.', price: 12),
  Coffee(coffeeIcon: FontAwesomeIcons.beer, name: 'Americano', price: 7),
  Coffee(
    coffeeIcon: FontAwesomeIcons.cocktail,
    name: 'Double Exspersso',
=======
  Coffee(
      id: '1',
      icon: FontAwesomeIcons.coffee.codePoint,
      name: "Espresso ",
      price: 8),
  Coffee(
      id: '1',
      icon: FontAwesomeIcons.mugHot.codePoint,
      name: "Cappuccino",
      price: 10),
  Coffee(
      id: '1',
      icon: FontAwesomeIcons.cocktail.codePoint,
      name: "Mocha",
      price: 12),
  Coffee(
      id: '1',
      icon: FontAwesomeIcons.beer.codePoint,
      name: "Americano",
      price: 7),
  Coffee(
    id: '1',
    icon: FontAwesomeIcons.cocktail.codePoint,
    name: "Italian Macchiato",
    price: 5,
  ),
  Coffee(
      id: '1',
      icon: FontAwesomeIcons.coffee.codePoint,
      name: "Flat White",
      price: 3),
  Coffee(
    id: '1',
    icon: FontAwesomeIcons.mugHot.codePoint,
    name: "American Affogato",
    price: 11,
  ),
  Coffee(
      id: '1',
      icon: FontAwesomeIcons.coffee.codePoint,
      name: "Long Black",
      price: 4),
  Coffee(
      id: '1',
      icon: FontAwesomeIcons.mugHot.codePoint,
      name: "Latte",
      price: 12),
  Coffee(
    id: '1',
    icon: FontAwesomeIcons.cocktail.codePoint,
    name: "American Espresso",
    price: 9,
  ),
  Coffee(
      id: '1',
      icon: FontAwesomeIcons.beer.codePoint,
      name: "CAFÈ AU LAIT.",
      price: 10),
  Coffee(
      id: '1',
      icon: FontAwesomeIcons.coffee.codePoint,
      name: "AFFÈ MOCHA.",
      price: 12),
  Coffee(
      id: '1',
      icon: FontAwesomeIcons.beer.codePoint,
      name: "Americano",
      price: 7),
  Coffee(
    id: '1',
    icon: FontAwesomeIcons.cocktail.codePoint,
    name: "Double Exspersso",
>>>>>>> origin/module04-database-management
    price: 5,
  ),
];

class Strings {
  static String get logoAsset => 'assets/logo.png';
  static String get hangoutAsset => 'assets/hangout.svg';
  static String get theBestCoffee => 'Get the best coffee!';
  static String get register => 'Register';
  static String get login => 'Login';
  static String get wbc => 'Wired Brain Coffee';
}
