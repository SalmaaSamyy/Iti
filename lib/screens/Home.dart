import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:my_project/screens/FavouriteScreen.dart';
import 'package:my_project/screens/SideMenu.dart';
import 'package:my_project/screens/bestseller.dart';
import 'package:my_project/screens/details.dart';
import 'package:my_project/screens/notification.dart';
import 'package:my_project/screens/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Color(0xffF8F9FA),
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
          child: Column(
            children: [
              SafeArea(
                top: true,
                bottom: true,
                left: true,
                right: true,
                minimum: EdgeInsets.all(16.0),
                maintainBottomViewPadding: true,
                child: Text('Store location'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SideMenu(), // أو الشاشة التالية
                        ),
                      );
                    },
                    icon: Icon(Icons.menu),
                  ),
                  Icon(
                    Icons.location_on,
                    color: Colors.red,
                  ),
                  Text(
                    "Mondolibug, Sylhet",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Image.asset("assets/image/Capture.PNG"),
                ],
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
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
              SizedBox(
                width: double.infinity,
                height: 15,
              ),
              TabBar(
                tabs: [
                  Tab(
                    child: Container(
                      child: Column(
                        children: [
                          Image.asset("assets/image/NIKE.jfif"),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Image.asset("assets/image/PUMA.png"),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Image.asset("assets/image/UNDERARMOUR.jfif"),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Image.asset("assets/image/adidas.png"),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Image.asset("assets/image/CONVERSE.png"),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Popular Shoes",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextButton(
                              child: Text(
                                "See all",
                                style: TextStyle(
                                  color: Color(0xff5B9EE1),
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        Expanded(
                          child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              childAspectRatio: 3 / 3,
                            ),
                            itemBuilder: (context, index) {
                              if (index == 0) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ShoeDetailsScreen(),
                                      ),
                                    );
                                  },
                                  child: Card(
                                    color: Color(0xffFFFFFF),
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Image.asset(
                                              "assets/image/NIKE1.png"),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    BestSellerScreen(), // أو الشاشة التالية
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Best Seller",
                                            style: TextStyle(
                                                color: Color(0xff5B9EE1)),
                                          ),
                                        ),
                                        Text(
                                          "Nike Air Max",
                                          style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text("\$493.00"),
                                      ],
                                    ),
                                  ),
                                );
                              } else {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ShoeDetailsScreen(),
                                      ),
                                    );
                                  },
                                  child: Card(
                                    color: Color(0xffFFFFFF),
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Image.asset(
                                              "assets/image/nike-zoom.png"),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    BestSellerScreen(), // أو الشاشة التالية
                                              ),
                                            );
                                          },
                                          child: Text(
                                            "Best Seller",
                                            style: TextStyle(
                                                color: Color(0xff5B9EE1)),
                                          ),
                                        ),
                                        Text(
                                          "Nike Air Max",
                                          style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text("\$299.00"),
                                      ],
                                    ),
                                  ),
                                );
                              }
                            },
                            itemCount: 2, // Add item count
                          ),
                        ),
                      ],
                    ),
                    Center(child: Text("PUMA")),
                    Center(child: Text("UNDER ARMOUR")),
                    Center(child: Text("adidas")),
                    Center(child: Text("CONVERSE")),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New Arrivals",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      color: Color(0xff5B9EE1),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 2 / 1.1,
                  ),
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Card(
                        color: Color(0xffFFFFFF),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            BestSellerScreen(), // أو الشاشة التالية
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "Best Seller",
                                    style: TextStyle(color: Color(0xff5B9EE1)),
                                  ),
                                ),
                                Text(
                                  "Nike Air Max",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("\$493.00"),
                              ],
                            ),
                            Expanded(
                              child: Image.asset("assets/image/NIKE1.png"),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                  itemCount: 1, // Add item count
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xffF8F9FA),
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    color: Color(0xff5B9EE1),
                  )),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Color(0xff5B9EE1),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          FavouriteScreen(), // أو الشاشة التالية
                    ),
                  );
                },
              ),
              label: 'Favourite',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Color(0xff5B9EE1),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          NotificationsScreen(), // أو الشاشة التالية
                    ),
                  );
                },
              ),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Color(0xff5B9EE1),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileUser(), // أو الشاشة التالية
                    ),
                  );
                },
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
