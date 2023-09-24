// presentation/screens/home/home_screen.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key); // Updated constructor

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Home'),
          ),
          body: controller.isLoading.value
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
            itemCount: controller.products.length,
            itemBuilder: (context, index) {
              final product = controller.products[index];
              return ListTile(
                title: Text(product.name),
                subtitle: Text(product.description),
                trailing: Text('\$${product.price}'),
                onTap: () => Get.toNamed('/product-details', arguments: product.id),
              );
            },
          ),
        );
      },
    );
  }
}

