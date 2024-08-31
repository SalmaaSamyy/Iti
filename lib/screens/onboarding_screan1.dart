import 'package:flutter/material.dart';
import 'package:my_project/screens/onbording_screen2.dart';

class OnboardScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F9FA),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 130,
            ),
            Image.asset('assets/image/onboard1.png'),
            SizedBox(height: 30),
            Text(
              'Start Journey With Nike',
              // textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Smart, Gorgeous & Fashionable Collection',
              // textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(top: 120, left: 150),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OnboardScreen2()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff5B9EE1), // Button color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 15.0),
                  child: Text(
                    'Get Started',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
