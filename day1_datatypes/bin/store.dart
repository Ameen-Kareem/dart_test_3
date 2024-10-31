class Product {
  Product({required this.name, required this.price, required this.quantity});
  String name;
  double price;
  int quantity;
  restock(int amount) {
    quantity += amount;
    print("$name added to store with $amount units.");
    print("Stock for $name: $quantity");
  }

  sell(int amount) {
    if (amount > quantity) {
      print("Insufficient stock.");
    } else {
      quantity -= amount;
      print("$amount units of $name sold. Remaining stock:$quantity");
    }
  }
}

class Store {
  List<Product> products = [];
  addProduct(Product product) {
    products.add(product);
  }

  checkStock(String productName) {
    int count = 0;
    for (int i = 0; i < products.length; i++) {
      if (products[i].name == productName) {
        print("Stock for $productName: ${products[i].quantity}");
        count++;
      }
    }
    if (count == 0) {
      print("No such product exist");
    }
  }
}

void main() {
  Product product1 = Product(name: "Laptop", price: 1000, quantity: 10);
  Store store1 = Store();
  store1.addProduct(product1);
  store1.checkStock("Laptop");
  product1.restock(100);
  store1.checkStock("Laptop");
  product1.sell(50);
  store1.checkStock("Laptop");
  store1.checkStock("Headphones");
}
