class Routes {
  static Future<String> get initialRoute async {
    return login;
  }

  static const login = '/login';
  static const register = '/register';
  static const home = '/home';
  static const addAds = '/add_ads';
  static const ads = '/ads';
}
