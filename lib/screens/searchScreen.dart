import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F9FA),
      appBar: AppBar(
        backgroundColor: const Color(0xffF8F9FA),
        leading: Icon(Icons.arrow_back),
        title: Text('Search'),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Cancel',
                style: TextStyle(
                  color: Color(0xff5B9EE1),
                ),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
                hintText: "Looking for shoes",
                hintStyle: TextStyle(color: Color(0xff707B81)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(35),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(35),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Color(0xffFFFFFF),
                contentPadding: EdgeInsets.symmetric(vertical: 15),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.update),
                    title: Text('Nike Air Max Shoes'),
                  ),
                  ListTile(
                    leading: Icon(Icons.update),
                    title: Text('Nike Jordan Shoes'),
                  ),
                  ListTile(
                    leading: Icon(Icons.update),
                    title: Text('Nike Air Force Shoes'),
                  ),
                  ListTile(
                    leading: Icon(Icons.update),
                    title: Text('Nike Club Max Shoes'),
                  ),
                  ListTile(
                    leading: Icon(Icons.update),
                    title: Text('Snakers Nike Shoes'),
                  ),
                  ListTile(
                    leading: Icon(Icons.update),
                    title: Text('Regular Shoes'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
