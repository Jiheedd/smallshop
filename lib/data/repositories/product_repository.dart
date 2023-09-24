import '../models/product_model.dart';
import '../sources/firebase_data_source.dart';

class ProductRepository {
  final FirebaseDataSource _dataSource;

  ProductRepository(this._dataSource);

  Future<List<ProductModel>> fetchProducts() => _dataSource.getProducts();

  Future<ProductModel> fetchProductDetails(String id) => _dataSource.getProductDetails(id);

// Add other CRUD operations as needed
}
