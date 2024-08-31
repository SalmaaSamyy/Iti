import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Notifications"),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Clear All",
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Text(
            "today",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          NotificationTile(
            title: "We Have New Products With Offers",
            oldPrice: "\$364.95",
            newPrice: "\$260.00",
            timeAgo: "6 min ago",
            imageUrl: "assets/image/nike7.png",
            isNew: true,
          ),
          NotificationTile(
            title: "We Have New Products With Offers",
            oldPrice: "\$964.95",
            newPrice: "\$560.00",
            timeAgo: "6 min ago",
            imageUrl: "assets/image/nike2.png",
            isNew: true,
          ),
          NotificationTile(
            title: "We Have New Products With Offers",
            oldPrice: "\$564.95",
            newPrice: "\$26\90.00",
            timeAgo: "6 min ago",
            imageUrl: "assets/image/nike3.png",
            isNew: true,
          ),
          Text(
            "yesterday",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          NotificationTile(
            title: "We Have New Products With Offers",
            oldPrice: "\$364.95",
            newPrice: "\$260.00",
            timeAgo: "6 min ago",
            imageUrl: "assets/image/nike5.png",
            isNew: true,
          ),
          NotificationTile(
            title: "We Have New Products With Offers",
            oldPrice: "\$364.95",
            newPrice: "\$260.00",
            timeAgo: "6 min ago",
            imageUrl: "assets/image/nike6.png",
            isNew: true,
          ),
          // Add more NotificationTile widgets as needed
        ],
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String title;
  final String oldPrice;
  final String newPrice;
  final String timeAgo;
  final String imageUrl;
  final bool isNew;

  const NotificationTile({
    required this.title,
    required this.oldPrice,
    required this.newPrice,
    required this.timeAgo,
    required this.imageUrl,
    required this.isNew,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(imageUrl),
      title: Text(title),
      subtitle: Row(
        children: [
          Text(
            oldPrice,
            style: TextStyle(decoration: TextDecoration.lineThrough),
          ),
          SizedBox(width: 8),
          Text(newPrice, style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isNew) Icon(Icons.circle, color: Colors.blue, size: 8),
          SizedBox(height: 8),
          Text(timeAgo, style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
