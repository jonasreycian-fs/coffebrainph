import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';

import '../../enums/enums.dart';

class AnalyticsService {
  final FirebaseAnalytics _analytics = FirebaseAnalytics.instanceFor(app: Firebase.app());

  // Singleton setup: prevents multiple instances of this class.
  factory AnalyticsService() => _service;
  AnalyticsService._();
  static final AnalyticsService _service = AnalyticsService._();

  static AnalyticsService get instance => _service;

  static FirebaseAnalyticsObserver get observer => FirebaseAnalyticsObserver(analytics: _service._analytics);

  Future<void> logLogin({loginMethod = 'email'}) async {
    return _analytics.logLogin(loginMethod: loginMethod);
  }

  Future<void> logAddToCart({
    required String itemId,
    required String itemName,
    required String itemCategory,
    required int quantity,
  }) async {
    final items = AnalyticsEventItem(
      itemId: itemId,
      itemName: itemName,
      itemCategory: itemCategory,
      quantity: quantity,
    );
    return _analytics.logAddToCart(items: [items]);
  }

  Future<void> logPlaceOrder({
    required String orderId,
    required num total,
    required List<String?> coffees,
    required int quantity,
  }) async {
    return _analytics.logEvent(
      name: 'place_order',
      parameters: {
        'quantity': quantity,
        'total': total,
        'coffees': coffees.toString(),
        'orderId': orderId,
      },
    );
  }

  Future<void> setUserProperties({
    required String userId,
    required List<UserRole> userRoles,
  }) async {
    await _analytics.setUserId(id: userId);
    await _analytics.setUserProperty(
      name: 'user_role', // custom userProperty
      value: userRoles.contains(UserRole.customer) ? 'customer' : 'adminOrUnknown',
    );
  }

  Future<void> logLogoutPressed({
    bool isBasketEmpty = true,
  }) async {
    return _analytics.logEvent(
      name: 'logout_pressed',
      parameters: {'is_basket_empty': isBasketEmpty},
    );
  }
}
