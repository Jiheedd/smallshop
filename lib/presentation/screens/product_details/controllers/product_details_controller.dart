// presentation/screens/product_details/controllers/product_details_controller.dart

import 'package:get/get.dart';

import '../../../../data/models/product_model.dart';
import '../../../../data/repositories/product_repository.dart';
// Import your domain and data layers as needed

class ProductDetailsController extends GetxController {
  final ProductRepository _repository;
  final String productId;
  var product = ProductModel().obs; // Placeholder model
  var isLoading = true.obs;

  ProductDetailsController(this.productId, this._repository);

  @override
  void onInit() {
    super.onInit();
    fetchProductDetails();
  }

  Future<void> fetchProductDetails() async {
    try {
      isLoading.value = true;
      product.value = await _repository.fetchProductDetails(productId);
    } catch (e) {
      // Handle exceptions and show error messages if needed
    } finally {
      isLoading.value = false;
    }
  }
}