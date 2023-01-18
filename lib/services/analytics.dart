import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';

class AnalyticsService {
  final FirebaseAnalytics _analytics = FirebaseAnalytics.instanceFor(app: Firebase.app());

  // Singleton setup: prevents multiple instances of this class.
  factory AnalyticsService() => _service;

  AnalyticsService._();

  static final AnalyticsService _service = AnalyticsService._();

  static FirebaseAnalytics get instance => _service._analytics;

  static FirebaseAnalyticsObserver get observer => FirebaseAnalyticsObserver(analytics: _service._analytics);

  Future<void> logLogin() async {
    return _analytics.logLogin(loginMethod: 'email');
  }

  Future<void> setUserProperties({
    required String userId,
    required String userRole,
  }) async {
    await _analytics.setUserId(id: userId);
    await _analytics.setUserProperty(
      name: 'user_role', // custom userProperty
      value: userRole,
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
