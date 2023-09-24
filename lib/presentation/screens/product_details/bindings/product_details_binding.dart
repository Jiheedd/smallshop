// presentation/screens/product_details/bindings/product_details_binding.dart

import 'package:get/get.dart';

import '../../../../data/repositories/product_repository.dart';
import '../controllers/product_details_controller.dart';
// ... other imports

class ProductDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductDetailsController>(
          () => ProductDetailsController(Get.arguments as String, Get.find<ProductRepository>()),
    );
  }
}
