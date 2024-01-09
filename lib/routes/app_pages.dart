
import 'package:get/get.dart';

import '../dev/Beneficiary_Dev/bindings/beneficiary_dev_binding.dart';
import '../dev/Beneficiary_Dev/views/beneficiary_dev_view.dart';
import '../dev/Direct_Payment_Dev/bindings/direct_payment_dev_binding.dart';
import '../dev/Direct_Payment_Dev/views/direct_payment_dev_view.dart';
import '../dev/Home_Dev/bindings/home_dev_binding.dart';
import '../dev/Home_Dev/views/home_dev_view.dart';
import '../dev/Login_Dev/bindings/login_dev_binding.dart';
import '../dev/Login_Dev/views/login_dev_view.dart';
import '../dev/Own_Transfer_Dev/bindings/own_transfer_dev_binding.dart';
import '../dev/Own_Transfer_Dev/views/own_transfer_dev_view.dart';
import '../prod/Beneficiary_Prod/bindings/beneficiary_prod_binding.dart';
import '../prod/Beneficiary_Prod/views/beneficiary_prod_view.dart';
import '../prod/Direct_Payment_Prod/bindings/direct_payment_prod_binding.dart';
import '../prod/Direct_Payment_Prod/views/direct_payment_prod_view.dart';
import '../prod/Home_Prod/bindings/home_prod_binding.dart';
import '../prod/Home_Prod/views/home_prod_view.dart';
import '../prod/Login_Prod/bindings/login_prod_binding.dart';
import '../prod/Login_Prod/views/login_prod_view.dart';
import '../prod/Own_Transfer_Prod/bindings/own_transfer_prod_binding.dart';
import '../prod/Own_Transfer_Prod/views/own_transfer_prod_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // static const INITIAL = Routes.;

  static final routes = [
    GetPage(
      name: _Paths.HOME_DEV,
      page: () =>  HomeDevView(),
      binding: HomeDevBinding(),
    ),
    GetPage(
      name: _Paths.HOME_PROD,
      page: () => const HomeProdView(),
      binding: HomeProdBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_DEV,
      page: () => const LoginProdView(),
      binding: LoginDevBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PROD,
      page: () => const LoginProdView(),
      binding: LoginProdBinding(),
    ),
    GetPage(
      name: _Paths.OWN_TRANSFER_DEV,
      page: () => const OwnTransferDevView(),
      binding: OwnTransferDevBinding(),
    ),
    GetPage(
      name: _Paths.OWN_TRANSFER_PROD,
      page: () => const OwnTransferProdView(),
      binding: OwnTransferProdBinding(),
    ),
    GetPage(
      name: _Paths.BENEFICIARY_DEV,
      page: () => const BeneficiaryDevView(),
      binding: BeneficiaryDevBinding(),
    ),
    GetPage(
      name: _Paths.BENEFICIARY_PROD,
      page: () => const BeneficiaryProdView(),
      binding: BeneficiaryProdBinding(),
    ),
    GetPage(
      name: _Paths.DIRECT_PAYMENT_DEV,
      page: () => const DirectPaymentDevView(),
      binding: DirectPaymentDevBinding(),
    ),
    GetPage(
      name: _Paths.DIRECT_PAYMENT_PROD,
      page: () => const DirectPaymentProdView(),
      binding: DirectPaymentProdBinding(),
    ),
  ];
}
