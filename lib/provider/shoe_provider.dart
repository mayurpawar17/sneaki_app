import 'package:flutter/foundation.dart';

import '../model/shoe_model.dart';

class ShoeProvider extends ChangeNotifier {
  final shoeData = [
    {
      "name": "Nike Air Max 270",
      "description":
          "Lightweight and breathable with a large Air unit for all-day comfort.",
      "price": 149.99,
      "image": "assets/shoe1.png",
    },
    {
      "name": "Nike Air Force 1 '07",
      "description":
          "Classic style with modern comfort, featuring a durable leather upper.",
      "price": 109.99,
      "image": "assets/shoe2.png",
    },
    {
      "name": "Nike ZoomX Vaporfly NEXT%",
      "description":
          "Engineered for speed with ZoomX foam and carbon fiber plate.",
      "price": 249.99,
      "image": "assets/shoe3.png",
    },
    {
      "name": "Nike Blazer Mid '77 Vintage",
      "description":
          "Retro basketball style with suede overlays and vintage finish.",
      "price": 99.99,
      "image": "assets/shoe4.png",
    },
    {
      "name": "Nike React Infinity Run Flyknit 3",
      "description":
          "Designed to reduce injury and keep you running with responsive React foam.",
      "price": 159.99,
      "image": "assets/shoe1.png",
    },
  ];

  late final List<Shoe> shoes = shoeData.map(Shoe.fromJson).toList();
}
