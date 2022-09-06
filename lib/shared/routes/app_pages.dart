import 'package:get/get.dart';
import 'package:solve/shared/routes/app_routes.dart';
import 'package:solve/ui/pages/auth/sign_in.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.signin,
      page: () => SignInPage(),
    )
  ];
}
