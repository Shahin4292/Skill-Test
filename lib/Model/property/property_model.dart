class Property {
  final String name;
  final String address;
  final String imageUrl;
  final double price;
  final String priceType; // e.g., "Year" or "Month"
  final int bedrooms;
  final int bathrooms;
  final double distance; // e.g., 1.8 km

  Property({
    required this.name,
    required this.address,
    required this.imageUrl,
    required this.price,
    required this.priceType,
    required this.bedrooms,
    required this.bathrooms,
    required this.distance,
  });
}
