part of 'app_routes.dart';

sealed class Routes {
  Routes._();

  static const String initial = '/';
  static const String chooseLang = '/choose_lang';

  /// main
  static const String main = '/main';
  static const String detail = 'detail';
  static const String bannerDetail = 'banner_detail';
  static const String internetConnection = '/internet_connection';

  /// profile
  static const String aboutUs = '/about_us';
  static const String settings = '/settings';

  /// auth
  static const String auth = '/auth';
  static const String confirmCode = '/confirm_code';
  static const String register = '/register';
}
