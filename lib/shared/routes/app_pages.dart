import 'package:get/get.dart';
import 'package:solve/shared/routes/app_routes.dart';
import 'package:solve/ui/pages/auth/confirmation/change_password.dart';
import 'package:solve/ui/pages/auth/confirmation/forgot_password.dart';
import 'package:solve/ui/pages/auth/confirmation/recover_password.dart';
import 'package:solve/ui/pages/auth/confirmation/reset_password.dart';
import 'package:solve/ui/pages/auth/sign_in.dart';
import 'package:solve/ui/pages/auth/sign_up.dart';
import 'package:solve/ui/pages/home_screen.dart';
import 'package:solve/ui/pages/profiles/profile.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.signin,
      page: () => SignInPage(),
    ),
    GetPage(
      name: Routes.signup,
      page: () => SignUpPage(),
    ),
    GetPage(
      name: Routes.forgotPassword,
      page: () => ForgotPasswordPage(),
    ),
    GetPage(
      name: Routes.recoverPassword,
      page: () => RecoverPasswordPage(),
    ),
    GetPage(
      name: Routes.resetPassword,
      page: () => ResetPasswordPage(),
    ),
    GetPage(
      name: Routes.homeScreen,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: Routes.profilePage,
      page: () => ProfilePage(),
    ),
    GetPage(
      name: Routes.changePassword,
      page: () => ChangePasswordPage(),
    )
  ];
}
