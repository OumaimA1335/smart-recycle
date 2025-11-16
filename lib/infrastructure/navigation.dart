import 'package:get/get_navigation/get_navigation.dart';
import 'package:smartrecycle/Features/Ads/presentation/pages/add_ads.dart';
import 'package:smartrecycle/Features/Ads/presentation/pages/home.dart';
import 'package:smartrecycle/Features/auth/presentation/pages/login.dart';
import 'package:smartrecycle/Features/auth/presentation/pages/register.dart';
import 'package:smartrecycle/infrastructure/navigation/Bindings/controllers_bindings.dart';
import 'package:smartrecycle/infrastructure/routes.dart';

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.login,
      page: () => const Login(),
      binding: LoginControllerBinding(),
    ),
    GetPage(
      name: Routes.register,
      page: () => const Register(),
      binding:RegisterControllerBinding(),
    ),
     GetPage(
      name: Routes.home,
      page: () => const Home(),
      binding:HomeControllerBinding(),
    ),
     GetPage(
      name: Routes.addAds,
      page: () => const AddAds(),
      binding:AddAdsControllerBinding(),
    ),
    
  ];
}
