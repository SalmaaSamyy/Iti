import 'package:flutter/material.dart';
import 'package:my_project/screens/FavouriteScreen.dart';
import 'package:my_project/screens/Home.dart';
import 'package:my_project/screens/account&setting.dart';
import 'package:my_project/screens/checkoutScreen.dart';
import 'package:my_project/screens/login_screan.dart';
import 'package:my_project/screens/notification.dart';
import 'package:my_project/screens/profile.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              "Alisson Becker",
              style: TextStyle(fontSize: 18),
            ),
            accountEmail: Text("alisson.becker@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/image/user.png"),
            ),
            decoration: BoxDecoration(color: Color(0xff5B9EE1)
                //  Colors.blueGrey,
                ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileUser(), // أو الشاشة التالية
                ),
              );
              // Add navigation logic here
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home Page"),
            onTap: () {
              // Add navigation logic here

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(), // أو الشاشة التالية
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text("My Cart"),
            onTap: () {
              // Add navigation logic here

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CheckoutScreen(), // أو الشاشة التالية
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favorite"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FavouriteScreen(), // أو الشاشة التالية
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text("Orders"),
            onTap: () {
              // Add navigation logic here
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notifications"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      NotificationsScreen(), // أو الشاشة التالية
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Account & Settings"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      AccountSettingsScreen(), // أو الشاشة التالية
                ),
              );
            },
          ),
          Divider(), // خط فاصل بين القوائم وعملية تسجيل الخروج
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Sign Out"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScrean(), // أو الشاشة التالية
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
