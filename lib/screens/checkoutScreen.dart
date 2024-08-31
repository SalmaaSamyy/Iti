import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F9FA),
      appBar: AppBar(
        backgroundColor: const Color(0xffF8F9FA),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Center(
          child: Text(
            'Checkout',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              color: Colors.white,
              child: Column(
                children: [
                  const ListTile(
                    leading: Icon(Icons.email_outlined),
                    title: Text('rumenhussen@gmail.com'),
                    subtitle: Text('Email'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.phone_outlined),
                    title: Text('+88-692-764-269'),
                    subtitle: Text('Phone'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.location_on_outlined),
                    title: Text('Newhall St 36, London, 12908 - UK'),
                    subtitle: Text('Address'),
                  ),
                  Image.asset(
                    "assets/image/Rectangle 1066.png",
                  ),
                  const Divider(),
                  Container(
                    margin: const EdgeInsets.all(8),
                    alignment: Alignment.centerLeft, // يخلي النص على الشمال
                    child: const Text(
                      "Payment Method",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.payment),
                    title: Text(
                      'Paypal Card',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    subtitle: Text(
                      '**** **** **** 4629',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Card(
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subtotal',
                          style: TextStyle(
                            color: Color(0xff707B81),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '\$1250.00',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shopping',
                          style: TextStyle(
                            color: Color(0xff707B81),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '\$40.90',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Cost',
                          style: TextStyle(
                            color: Color(0xff707B81),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '\$1690.99',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 15),
                      child: ElevatedButton(
                        //
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      20), // جعل حواف الـ AlertDialog دائرية
                                ),
                                content: Padding(
                                  padding: EdgeInsets.all(30),
                                  child: Column(
                                    mainAxisSize: MainAxisSize
                                        .min, // تصغير حجم العمود بناءً على محتواه

                                    children: [
                                      CircleAvatar(
                                        radius: 70, // التحكم في حجم الدائرة

                                        backgroundImage: AssetImage(
                                          "assets/image/Frame 273.png",
                                        ), //  "assets/image/Frame 273.png",
                                      ),
                                      SizedBox(
                                          height:
                                              20), // إضافة فراغ بين الصورة والنص
                                      Text(
                                        "Your Payment Is Successful",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign
                                            .center, // محاذاة النص في المنتصف
                                      ),
                                      SizedBox(
                                          height:
                                              20), // إضافة فراغ بين النص والزر
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(
                                              context); // لإغلاق الـ AlertDialog
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Text(
                                            "Back To Shopping",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xff5B9EE1),
                                          minimumSize: const Size(150, 50),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );

                          //
                        },

                        //
                        child: const Text(
                          "Payment",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff5B9EE1),
                          minimumSize: const Size(350, 50),
                          // padding: EdgeInsets.symmetric(vertical: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
