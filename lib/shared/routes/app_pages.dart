import 'package:get/get.dart';
import 'package:solve/shared/routes/app_routes.dart';
import 'package:solve/ui/pages/auth/sign_in.dart';
import 'package:solve/ui/pages/auth/sign_up.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.signin,
      page: () => SignInPage(),
    ),
    GetPage(
      name: Routes.signup,
      page: () => SignUpPage(),
    )
  ];
}
