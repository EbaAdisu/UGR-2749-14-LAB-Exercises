void main() {
  var product = Product('Laptop', 500, 2);
  print('Total cost: ${product.totalCost()}');
}

class Product {
  String name;
  double price;
  int quantity;
  Product(this.name, this.price, this.quantity);
  double totalCost() {
    return price * quantity;
  }
}
