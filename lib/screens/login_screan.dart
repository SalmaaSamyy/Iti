import 'package:flutter/material.dart';
import 'package:my_project/screens/Foget_Password.dart';
import 'package:my_project/screens/Home.dart';
import 'package:my_project/screens/create_account.dart';

class LoginScrean extends StatefulWidget {
  const LoginScrean({super.key});

  @override
  State<LoginScrean> createState() => _LoginScreanState();
}

class _LoginScreanState extends State<LoginScrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //////////////////////////////////////////////////
      ///
/*
      appBar: AppBar(
        backgroundColor: Color(0xffE5E5E5), // نفس لون الخلفية
        elevation: 0, // شيل الظل من الـ AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop(); // بيرجع لورا
          },
        ),
      ),
*/
      ///////////////////////////////////////////
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 50),
          // padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.035),//??

          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
                width: double.infinity,
              ),
              const Text(
                "Hello Again!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "Welcome Back You’ve Been Missed!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 100,
                width: double.infinity,
              ),
              const Text(
                "Email Address",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'your Gmail',
                  hintStyle: const TextStyle(
                    // color: Color(0xff1A2530),
                    color: Color.fromARGB(255, 143, 134, 134),
                    fontSize: 18,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              ),
              const Text(
                "Password",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.right,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter password',
                  hintStyle: const TextStyle(
                    // color: Color(0xff1A2530),
                    color: Color.fromARGB(255, 143, 134, 134),
                    fontSize: 18,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  suffixIcon: const Icon(Icons.visibility_off),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ForgetPassord(), // أو الشاشة التالية
                    ),
                  );
                },
                child: const Text(
                  "Recovery Password",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
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
                    "Don’t have an account?",
                    style: TextStyle(color: Color(0xff707B81)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CreateAccount(), // أو الشاشة التالية
                        ),
                      );
                    },
                    child: const Text("Sign Up for free"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
