import 'models/product.dart';
import 'services/product_service.dart';

void main() {

  List<Product> products = [

    Product("1", "Iphone 15", "iphone.jpg", 2500),

    Product("2", "Samsung S24", "samsung.jpg", 2000),

    Product("3", "Xiaomi 14", "xiaomi.jpg", 1500),
  ];

  displayProducts(products);

  addProduct(
    products,
    Product("4", "Oppo Reno", "oppo.jpg", 1800),
  );

  displayProducts(products);

  removeProduct(products, "2");

  displayProducts(products);

  updateProduct(products, "1", "Iphone 15 Pro", 3000);

  displayProducts(products);

  searchProduct(products, "Xiaomi");

  sortByPrice(products);

  displayProducts(products);
}