class ProductModel {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  ProductModel({
    this.id = '',
    this.name = '',
    this.description = '',
    this.price = 0.0,
    this.imageUrl = '',
  });

  // Convert Firestore document to ProductModel
  factory ProductModel.fromDocument(Map<String, dynamic> doc) {
    return ProductModel(
      id: doc['id'],
      name: doc['name'],
      description: doc['description'],
      price: doc['price'].toDouble(),
      imageUrl: doc['imageUrl'],
    );
  }

  // Convert ProductModel to Firestore document
  Map<String, dynamic> toDocument() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
    };
  }
}
