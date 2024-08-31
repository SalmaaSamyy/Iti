import 'package:flutter/material.dart';
import 'package:my_project/screens/login_screan.dart';

class ForgetPassord extends StatefulWidget {
  const ForgetPassord({super.key});

  @override
  State<ForgetPassord> createState() => _ForgetPassordState();
}

class _ForgetPassordState extends State<ForgetPassord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffE5E5E5),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 120, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Recovery Password",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Text(
                "Please Enter Your Email Address To \n Recieve a Verification Code",
                style: TextStyle(
                  color: Color(0xff707B81),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 100,
              ),
              Container(
                margin: EdgeInsets.all(8),
                alignment: Alignment.centerLeft, // يخلي النص على الشمال
                child: Text(
                  "Email Address",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none, // حذف الأوتلاين الأساسي

                  hintText: "Name@Gmail.com",
                  hintStyle: TextStyle(color: Colors.grey),

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(35),
                  ),

                  focusedBorder: OutlineInputBorder(
                    // نفس الكلام هنا
                    borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide.none, // حذف الحدود من focusedBorder
                  ),

                  filled: true,
                  fillColor: Color(0xffFFFFFF),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            LoginScrean(), // أو الشاشة التالية
                      ),
                    );
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff5B9EE1),
                    minimumSize: Size(350, 50),
                    // padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
