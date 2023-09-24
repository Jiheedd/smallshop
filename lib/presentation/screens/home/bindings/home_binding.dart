import 'package:get/get.dart';
import '../../../../data/repositories/product_repository.dart';
import '../../../../data/sources/firebase_data_source.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirebaseDataSource>(() => FirebaseDataSource());
    Get.lazyPut<ProductRepository>(
          () => ProductRepository(Get.find<FirebaseDataSource>()),
    );
    Get.lazyPut<HomeController>(
          () => HomeController(Get.find<ProductRepository>()),
    );
  }
}

