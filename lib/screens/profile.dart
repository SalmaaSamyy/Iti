import 'package:flutter/material.dart';

class ProfileUser extends StatefulWidget {
  const ProfileUser({super.key});

  @override
  State<ProfileUser> createState() => _ProfileUserState();
}

class _ProfileUserState extends State<ProfileUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffE5E5E5),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit, color: Color(0xff5B9EE1)),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          const Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/image/user.png"),
            ),
          ),
          const Text(
            "alisson becker",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const SizedBox(
            width: double.infinity,
            height: 100,
          ),
          //////////////////////////////////////////////////////////////////////////////////////
          Container(
            margin: const EdgeInsets.all(8),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Full Name",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none, //
              labelText: "Alosson Becker",
              labelStyle: const TextStyle(color: Colors.grey),
              // hintText: "Name@Gmail.com",
              // hintStyle: TextStyle(color: Colors.grey),

              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(35),
              ),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35),
                borderSide: BorderSide.none,
              ),

              filled: true,
              fillColor: const Color(0xffFFFFFF),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            ),
          ),

          Container(
            margin: const EdgeInsets.all(8),
            alignment: Alignment.centerLeft, // يخلي النص على الشمال
            child: const Text(
              "Email Address",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none, // حذف الأوتلاين الأساسي

              hintText: "AlossonBecker@gmail.com",
              hintStyle: const TextStyle(color: Colors.grey),

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
              fillColor: const Color(0xffFFFFFF),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            ),
          ),

          Container(
            margin: const EdgeInsets.all(8),
            alignment: Alignment.centerLeft, // يخلي النص على الشمال
            child: const Text(
              "Password",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none, // حذف الأوتلاين الأساسي

              hintText: "•••••••••••••",
              hintStyle: const TextStyle(color: Colors.grey),

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
              fillColor: const Color(0xffFFFFFF),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            ),
          ),
        ],
      ),
    );
  }
}
