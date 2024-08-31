import 'package:flutter/material.dart';
import 'package:my_project/screens/onboarding_screan1.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // هنا بنحدد مدة العرض (3 ثواني) وبعدها ينتقل للشاشة التالية
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardScreen1()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/image/Splash.png', // المسار للصورة اللي عندك
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => OnboardScreen1()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff5B9EE1), // لون الزر
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text('Get Started'),
            ),
          ),
        ],
      ),
    );
  }
}
