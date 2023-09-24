// presentation/screens/home/controllers/home_controller.dart

import 'package:get/get.dart';
// ... other imports
import '../../../../data/models/product_model.dart';
import '../../../../data/repositories/product_repository.dart';

class HomeController extends GetxController {
  final ProductRepository _repository;
  var products = <ProductModel>[].obs;
  var isLoading = true.obs;

  HomeController(this._repository);

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    try {
      isLoading.value = true;
      products.value = await _repository.fetchProducts();
    } catch (e) {
      // Handle exceptions and show error messages if needed
    } finally {
      isLoading.value = false;
    }
  }
}
