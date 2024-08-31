import 'package:flutter/material.dart';
import 'package:my_project/screens/login_screan.dart';

class OnboardScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F9FA),
      body: Stack(
        children: [
          // محتوى الشاشة مثل الصور والنصوص
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // أي محتوى آخر للشاشة مثل الصورة والنصوص
                SizedBox(
                  height: 120,
                ),
                Image.asset("assets/image/onboard2.png"),

                Expanded(
                  child: Text(
                    'Follow Latest Style Shoes',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    "There Are Many Beautiful And Attractive Plants To Your Room",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 260, left: 220, right: 45),
            child: Image.asset("assets/image/Ellipse 907.png"),
          ),
          // وضع الزر في أسفل اليسار
          Positioned(
            bottom: 20, // المسافة من الأسفل
            right: 20,
            // left: 20, // المسافة من اليسار
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScrean(), // أو الشاشة التالية
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff5B9EE1), // لون الزر
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
