import 'package:flutter/material.dart';

class CustomShoeCard extends StatelessWidget {
  const CustomShoeCard({
    super.key,
    required this.shoeName,
    required this.shoePrice,
    required this.shoeImage,
  });

  final String shoeName;
  final double shoePrice;
  final String shoeImage;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(5),
      width: double.infinity,
      height: 300.0,
      decoration: BoxDecoration(
        color: Color(0xffF6F6F6),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              IconButton(
                icon: Icon(Icons.favorite_border_outlined),
                iconSize: 20,
                tooltip: 'favorite',
                splashRadius: 24,
                onPressed: () {},
              ),
            ],
          ),
          Hero(
            tag: shoeImage,
            child: Image.asset(shoeImage, height: screenHeight * 0.2),
          ),
          Text(
            shoeName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          Text('\$ $shoePrice'),
        ],
      ),
    );
  }
}
