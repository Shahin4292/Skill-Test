import 'package:get/get.dart';
import 'package:skill_test/Res/routes/routes_name.dart';

import '../../view/details_product/details_product_view.dart';
import '../../view/home/home_view.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RouteName.homeView,
          page: () => HomeView(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),

        GetPage(
          name: RouteName.detailsProduct,
          page: () => DetailsProductView(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
      ];
}
