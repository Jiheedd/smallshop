// presentation/screens/product_details/product_details_screen.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/repositories/product_repository.dart';
import 'controllers/product_details_controller.dart';

class ProductDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productId = Get.arguments as String; // Get the passed product ID
    return GetBuilder<ProductDetailsController>(
      init: ProductDetailsController(productId,Get.find<ProductRepository>()), // Pass the product ID to the controller
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Product Details'),
          ),
          body: controller.isLoading.value
              ? Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
            child: Column(
              children: [
                Image.network(controller.product.value.imageUrl),
                SizedBox(height: 16.0),
                Text(controller.product.value.name, style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
                SizedBox(height: 16.0),
                Text(controller.product.value.description),
                SizedBox(height: 16.0),
                Text('\$${controller.product.value.price}', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                // Add other UI elements as needed
              ],
            ),
          ),
        );
      },
    );
  }
}
