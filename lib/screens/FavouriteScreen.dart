import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  // قائمة الأحذية مع بياناتها المختلفة
  final List<Map<String, dynamic>> shoes = [
    {
      "name": "Nike Jordan",
      "price": "\$58.7",
      "image": "assets/image/NIKE1.png",
      "colors": [Colors.blue, Colors.red, Colors.yellow],
    },
    {
      "name": "Nike Air Max",
      "price": "\$37.8",
      "image": "assets/image/nike-zoom.png",
      "colors": [Colors.blue, Colors.grey, Colors.black],
    },
    {
      "name": "Nike Club Max",
      "price": "\$47.7",
      "image": "assets/image/nike2.png",
      "colors": [Colors.blue, Colors.yellow],
    },
    {
      "name": "Nike Air Max",
      "price": "\$57.6",
      "image": "assets/image/nike3.png",
      "colors": [Colors.green, Colors.purple, Colors.orange],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F9FA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Favourite",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.favorite, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: GridView.builder(
          itemCount: shoes.length, // عدد الكروت حسب طول القائمة
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // عدد الأعمدة
            childAspectRatio: 0.75, // نسبة العرض إلى الارتفاع
            crossAxisSpacing: 10, // المسافة الأفقية بين العناصر
            mainAxisSpacing: 10, // المسافة العمودية بين العناصر
          ),
          itemBuilder: (context, index) {
            final shoe = shoes[index];
            return _buildShoeCard(shoe);
          },
        ),
      ),
    );
  }

  Widget _buildShoeCard(Map<String, dynamic> shoe) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.favorite_border),
                Icon(Icons.favorite),
              ],
            ),
            Center(
              child: Image.asset(
                shoe["image"],
                height: 80,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "BEST SELLER",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 5),
            Text(
              shoe["name"], //
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              shoe["price"], //
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: shoe["colors"].map<Widget>((color) {
                return _buildColorDot(color);
              }).toList(),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildColorDot(Color color) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FavouriteScreen(),
  ));
}
