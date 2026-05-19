import '../models/product.dart';


// hien thi
void displayProducts(List<Product> products) {

  print("\nDanh sách sản phẩm:");

  for (var p in products) {
    print(p);
  }
}


// them
void addProduct(List<Product> products, Product product) {

  products.add(product);

  print("\nĐã thêm sản phẩm.");
}


// xoa
void removeProduct(List<Product> products, String id) {

  products.removeWhere((p) => p.id == id);

  print("\nĐã xóa sản phẩm có id = $id");
}


// sua
void updateProduct(
    List<Product> products,
    String id,
    String newName,
    double newPrice,
    ) {

  for (var p in products) {

    if (p.id == id) {
      p.name = newName;
      p.price = newPrice;
    }
  }

  print("\nĐã cập nhật sản phẩm.");
}


// tim kiem
void searchProduct(List<Product> products, String keyword) {

  print("\nKết quả tìm kiếm:");

  var result = products.where(
        (p) => p.name.toLowerCase().contains(
      keyword.toLowerCase(),
    ),
  );

  for (var p in result) {
    print(p);
  }
}


// sap xep
void sortByPrice(List<Product> products) {

  products.sort(
        (a, b) => a.price.compareTo(b.price),
  );

  print("\nDanh sách sau khi sắp xếp:");
}