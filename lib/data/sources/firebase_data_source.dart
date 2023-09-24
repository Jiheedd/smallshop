import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/product_model.dart';


class FirebaseDataSource {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<ProductModel>> getProducts() async {
    QuerySnapshot snapshot = await _firestore.collection('products').get();
    return snapshot.docs.map((doc) => ProductModel.fromDocument(doc.data() as Map<String, dynamic>)).toList();
  }

  Future<ProductModel> getProductDetails(String id) async {
    DocumentSnapshot snapshot = await _firestore.collection('products').doc(id).get();
    return ProductModel.fromDocument(snapshot.data() as Map<String, dynamic>);
  }

// Add other CRUD operations as needed
}
