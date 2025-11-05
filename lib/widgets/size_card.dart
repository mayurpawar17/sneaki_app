import 'package:flutter/material.dart';

class SizeCard extends StatelessWidget {
  const SizeCard({super.key, required this.size});

  final String size;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.01),
      height: screenHeight * 0.06,
      width: screenWidth * 0.12,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(size, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
