import 'package:flutter/material.dart';
import 'package:my_project/screens/searchScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BestSellerScreen(),
    );
  }
}

class BestSellerScreen extends StatelessWidget {
  final List<Map<String, dynamic>> bestSellers = [
    {
      'name': 'Nike Air Force',
      'price': '\$367.76',
      'image': 'assets/image/nike2.png', // حط المسار الصح للصورة هنا
      'colors': [Colors.blue, Colors.green, Colors.yellow],
    },
    {
      'name': 'Nike Air Max',
      'price': '\$254.89',
      'image': 'assets/image/nike3.png',
      'colors': [Colors.blue, Colors.grey, Colors.black],
    },
    {
      'name': 'Nike Jordan',
      'price': '\$367.76',
      'image': 'assets/image/nike4.png',
      'colors': [Colors.green, Colors.orange, Colors.red],
    },
    {
      'name': 'Nike Club Max',
      'price': '\$47.7',
      'image': 'assets/image/nike5.png',
      'colors': [Colors.blue, Colors.orange, Colors.yellow],
    },
    {
      'name': 'Nike Air Max 2',
      'price': '\$57.6',
      'image': 'assets/image/nike6.png',
      'colors': [Colors.purple, Colors.green, Colors.orange],
    },
    {
      'name': 'Nike Club Force',
      'price': '\$67.9',
      'image': 'assets/image/nike7.png',
      'colors': [Colors.red, Colors.black, Colors.yellow],
    },
    {
      'name': 'Nike Air Force',
      'price': '\$367.76',
      'image': 'assets/image/nike2.png', // حط المسار الصح للصورة هنا
      'colors': [Colors.blue, Colors.green, Colors.yellow],
    },
    {
      'name': 'Nike Air Max',
      'price': '\$254.89',
      'image': 'assets/image/nike3.png',
      'colors': [Colors.blue, Colors.grey, Colors.black],
    },
    {
      'name': 'Nike Jordan',
      'price': '\$367.76',
      'image': 'assets/image/nike4.png',
      'colors': [Colors.green, Colors.orange, Colors.red],
    },
    {
      'name': 'Nike Club Max',
      'price': '\$47.7',
      'image': 'assets/image/nike5.png',
      'colors': [Colors.blue, Colors.orange, Colors.yellow],
    },
    {
      'name': 'Nike Air Max 2',
      'price': '\$57.6',
      'image': 'assets/image/nike6.png',
      'colors': [Colors.purple, Colors.green, Colors.orange],
    },
    {
      'name': 'Nike Club Force',
      'price': '\$67.9',
      'image': 'assets/image/nike7.png',
      'colors': [Colors.red, Colors.black, Colors.yellow],
    },
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F9FA),
      appBar: AppBar(
        backgroundColor: Color(0xffF8F9FA),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(child: Text('Best Sellers')),
        actions: [
          IconButton(
            onPressed: () {
              _showFilterBottomSheet(context);

              //bottomsheet
              // showModalBottomSheet(
              //     context: context, builder: (BuildContext context) {
              //       return SizedBox(
              //         height: 400,
              //         child: Center(
              //           child: ,
              //         ),
              //       )
              //     });
            },
            icon: Icon(Icons.tune),
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchScreen(), // أو الشاشة التالية
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // عدد الأعمدة (كل 2 items جنب بعض)
            mainAxisSpacing: 10, // المسافة بين الصفوف
            crossAxisSpacing: 10, // المسافة بين الأعمدة
            childAspectRatio: 2 / 2.5, // نسبة العرض إلى الطول لكل عنصر
          ),
          itemCount: bestSellers.length,
          itemBuilder: (context, index) {
            final item = bestSellers[index];
            return Card(
              color: Colors.white, // Color(0xffF8F9FA),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Image.asset(
                      item['image'],
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Best Seller",
                          style: TextStyle(color: Color(0xff5B9EE1)),
                        ),
                        Text(
                          item['name'],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(item['price']),
                        SizedBox(height: 5),
                        Row(
                          children: item['colors'].map<Widget>((color) {
                            return Container(
                              margin: EdgeInsets.symmetric(horizontal: 2),
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                color: color,
                                shape: BoxShape.circle,
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

void _showFilterBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.all(16),
        height: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 40,
                height: 4,
                color: Colors.grey[300],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Filters',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text('Gender'),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildFilterOption('Men', true),
                _buildFilterOption('Women', false),
                _buildFilterOption('Unisex', false),
              ],
            ),
            SizedBox(height: 20),
            Text('Size'),
            SizedBox(height: 10),
            Wrap(
              spacing: 8.0,
              children: [
                _buildSizeOption('UK 4.4', false),
                _buildSizeOption('US 5.5', true),
                _buildSizeOption('UK 6.5', false),
                _buildSizeOption('EU 11.5', false),
              ],
            ),
            SizedBox(height: 15),
            Text('Price'),
            RangeSlider(
              values: RangeValues(16, 350),
              min: 16,
              max: 350,
              activeColor: Color(0xff5B9EE1),
              labels: RangeLabels('\$16', '\$350'),
              onChanged: (RangeValues values) {},
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Close the bottom sheet
              },
              child: Text(
                'Apply',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff5B9EE1),
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}

Widget _buildFilterOption(String title, bool isSelected) {
  return GestureDetector(
    onTap: () {
      // Add your selection logic here
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xff5B9EE1) : Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
    ),
  );
}

Widget _buildSizeOption(String title, bool isSelected) {
  return GestureDetector(
    onTap: () {
      // Add your selection logic here
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xff5B9EE1) : Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
    ),
  );
}
