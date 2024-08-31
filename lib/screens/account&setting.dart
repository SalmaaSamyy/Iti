import 'package:flutter/material.dart';

class AccountSettingsScreen extends StatefulWidget {
  @override
  _AccountSettingsScreenState createState() => _AccountSettingsScreenState();
}

class _AccountSettingsScreenState extends State<AccountSettingsScreen> {
  bool isFaceIdEnabled = true;
  bool isPushNotificationsEnabled = true;
  bool isLocationServicesEnabled = true;
  bool isDarkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F9FA),
      appBar: AppBar(
        backgroundColor: Color(0xffF8F9FA),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
          child: Text(
            'Account & Settings',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: Text(
              "Account",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            leading:
                Icon(Icons.notifications_outlined, color: Color(0xff5B9EE1)),
            title: Text('Notification Setting'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.location_on_outlined, color: Color(0xff5B9EE1)),
            title: Text('Shipping Address'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.payment_outlined, color: Color(0xff5B9EE1)),
            title: Text('Payment Info'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.delete_outline, color: Color(0xff5B9EE1)),
            title: Text('Delete Account'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),
          SizedBox(height: 30),
          ListTile(
            title: Text(
              "App Settings",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          SwitchListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            title: Text('Enable Face ID For Log In'),
            value: isFaceIdEnabled,
            activeColor: Color(0xff5B9EE1),
            activeTrackColor: Color(0xffD9E8F8),
            inactiveThumbColor: Colors.white,
            onChanged: (value) {
              setState(() {
                isFaceIdEnabled = value;
              });
            },
          ),
          SwitchListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            title: Text('Enable Push Notifications'),
            value: isPushNotificationsEnabled,
            activeColor: Color(0xff5B9EE1),
            activeTrackColor: Color(0xffD9E8F8),
            inactiveThumbColor: Colors.white,
            onChanged: (value) {
              setState(() {
                isPushNotificationsEnabled = value;
              });
            },
          ),
          SwitchListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            title: Text('Enable Location Services'),
            value: isLocationServicesEnabled,
            activeColor: Color(0xff5B9EE1),
            activeTrackColor: Color(0xffD9E8F8),
            inactiveThumbColor: Colors.white,
            onChanged: (value) {
              setState(() {
                isLocationServicesEnabled = value;
              });
            },
          ),
          SwitchListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            title: Text('Dark Mode'),
            value: isDarkModeEnabled,
            activeColor: Color(0xff5B9EE1),
            activeTrackColor: Color(0xffD9E8F8),
            inactiveThumbColor: Colors.white,
            onChanged: (value) {
              setState(() {
                isDarkModeEnabled = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
