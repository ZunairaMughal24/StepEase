import 'package:e_commerec/pages/Home_page.dart';
import 'package:flutter/material.dart';

class MyIntroPage extends StatelessWidget {
  const MyIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset("assets/images/nike4.jpg", height: 200),
                ),
                const SizedBox(
                  height: 48,
                ),
                //title
                const Text("Just Do It",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                const SizedBox(
                  height: 24,
                ),
                //subtitle
                const Text(
                  "Brand new sneakers and custom kicks made witth premium quality",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
                //start now button
                const SizedBox(
                  height: 48,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const MyHome())),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.black,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(23),
                      child: Center(
                        child: Text(
                          "Shop now",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
