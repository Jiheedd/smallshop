import 'package:get/get.dart';
import '../../presentation/screens/home/bindings/home_binding.dart';
import '../../presentation/screens/home/home_screen.dart';
import '../../presentation/screens/product_details/bindings/product_details_binding.dart';
import '../../presentation/screens/product_details/product_details_screen.dart';
import 'app_routes.dart';
// Import other screens as needed

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.PRODUCT_DETAILS,
      page: () => ProductDetailsScreen(),
      binding: ProductDetailsBinding(),
    ),
    // ... other routes
  ];
}
