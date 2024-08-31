import 'package:flutter/material.dart';
import 'package:my_project/screens/Home.dart';
import 'package:my_project/screens/login_screan.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: double.infinity,
              height: 120,
            ),
            const Text(
              "Create Account",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              "Let’s Create Account Together",
              style: TextStyle(
                color: Color(0xff707B81),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              alignment: Alignment.centerLeft, // يخلي النص على الشمال

              child: const Text(
                "Your Name",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter your Name",
                hintStyle: const TextStyle(color: Color(0xff707B81)),
                enabledBorder: OutlineInputBorder(
                  //
                  borderSide: BorderSide(
                    width: MediaQuery.of(context).size.height * 0.001,
                  ),
                  borderRadius: BorderRadius.circular(35),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft, // يخلي النص على الشمال

              child: const Text(
                "Email Address",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Yours@gmail.com",
                hintStyle: const TextStyle(color: Color(0xff707B81)),
                enabledBorder: OutlineInputBorder(
                  //
                  borderSide: BorderSide(
                    width: MediaQuery.of(context).size.height * 0.001,
                  ),
                  borderRadius: BorderRadius.circular(35),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft, // يخلي النص على الشمال

              child: const Text(
                "Password",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter your password",
                hintStyle: const TextStyle(color: Color(0xff707B81)),
                enabledBorder: OutlineInputBorder(
                  //
                  borderSide: BorderSide(
                    width: MediaQuery.of(context).size.height * 0.001,
                  ),
                  borderRadius: BorderRadius.circular(35),
                ),
                suffixIcon: const Icon(Icons.visibility_off),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(), // أو الشاشة التالية
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff5B9EE1),
              ),
              child: const Text(
                'Sign In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 100,
                ),
                Image.asset(
                  "assets/image/google_PNG.png",
                  height: 35,
                  width: 35,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Sign in with google",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                    // textAlign: TextAlign.center
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?",
                  style: TextStyle(color: Color(0xff707B81)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            LoginScrean(), // أو الشاشة التالية
                      ),
                    );
                  },
                  child: const Text("Sign In"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
