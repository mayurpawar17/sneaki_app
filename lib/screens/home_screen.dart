import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Shoe> shoes = [
    Shoe(
      name: 'Nike Air Max 270 React',
      price: 270.00,
      imageUrl:
          'https://images.vegnonveg.com/resized/1360X1600/4331/air-force-1-07-whitewhite-60017a047bad7.jpeg',
    ),
    Shoe(
      name: 'Nike Air Max 97',
      price: 299.00,
      imageUrl:
          'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,q_auto:eco/vusewzuzzza6u9pzame/air-max-97-mens-shoes-8mmt2F.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 16),
          Icon(Icons.sort),
          SizedBox(width: 16),
          Stack(
            alignment: Alignment.center,
            children: [
              Icon(Icons.circle, size: 28),
              Text('3', style: TextStyle(color: Colors.white)),
            ],
          ),
          SizedBox(width: 16),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shoes',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                DropdownButton<String>(
                  value: 'Sort by',
                  underline: SizedBox(),
                  items: [
                    DropdownMenuItem(value: 'Sort by', child: Text('Sort by')),
                  ],
                  onChanged: (value) {},
                ),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: shoes.length,
                itemBuilder: (context, index) {
                  final shoe = shoes[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    elevation: 0,
                    margin: EdgeInsets.symmetric(vertical: 12),
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Image.network(shoe.imageUrl, height: 300),
                              ),
                              Icon(Icons.favorite_border),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            shoe.name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 6),
                          Text(
                            '\$${shoe.price.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Shoe {
  final String name;
  final double price;
  final String imageUrl;

  Shoe({required this.name, required this.price, required this.imageUrl});
}
