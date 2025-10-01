class TrackingPayment {
  final String name;
  final String shop;
  final String address;

  TrackingPayment({
    required this.name,
    required this.shop,
    required this.address,
  });
}

final trackingPayment = [
  TrackingPayment(
    name: "Johnson Smith",
    shop: "Boutique H&M",
    address: "12 rue des Lionnettes, Sannois, 95110",
  ),
  TrackingPayment(
    name: "Laurie Anne",
    shop: "Aerte",
    address: "12 rue des Sanas, Lyon, 69000",
  ),
];

