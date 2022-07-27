class Food {
  String name;
  double price;
  int quantity = 0;
  Food({this.name, this.price, this.quantity});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'price': price,
      'quantity': quantity,
    };
  }

  factory Food.fromMap(Map<String, dynamic> map) {
    return Food(
      name: map['name'],
      price: map['price'],
      quantity: map['quantity'],
    );
  }
}
