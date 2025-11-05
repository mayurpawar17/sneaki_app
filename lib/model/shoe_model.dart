class Shoe {
  final String name;
  final String description;
  final double price;
  final String image;

  const Shoe({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });

  factory Shoe.fromJson(Map<String, dynamic> json) {
    return Shoe(
      name: json['name'],
      description: json['description'],
      price: json['price'],
      image: json['image'],
    );
  }
}
