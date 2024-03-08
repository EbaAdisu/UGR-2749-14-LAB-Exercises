void main() {
  Map<String, int> shoppingCart = {};

  addToCart(shoppingCart, 'Product A', 2);
  addToCart(shoppingCart, 'Product B', 1);
  addToCart(shoppingCart, 'Product C', 3);

  print('Current Shopping Cart: $shoppingCart');

  double totalPrice = calculateTotalPrice(shoppingCart);
  print('Total Price: \$${totalPrice.toStringAsFixed(2)}');

  removeFromCart(shoppingCart, 'Product B');

  print('\nUpdated Shopping Cart: $shoppingCart');

  double updatedTotalPrice = calculateTotalPrice(shoppingCart);
  print('Updated Total Price: \$${updatedTotalPrice.toStringAsFixed(2)}');
}

void addToCart(Map<String, int> cart, String productName, int quantity) {
  cart[productName] =
      cart.containsKey(productName) ? cart[productName]! + quantity : quantity;
}

double calculateTotalPrice(Map<String, int> cart) {
  Map<String, double> productPrices = {
    'Product A': 10.99,
    'Product B': 5.99,
    'Product C': 8.49,
  };

  double total = 0.0;
  cart.forEach((productName, quantity) {
    if (productPrices.containsKey(productName)) {
      total += productPrices[productName]! * quantity;
    }
  });
  return total;
}

void removeFromCart(Map<String, int> cart, String productName) {
  cart.remove(productName);
}
