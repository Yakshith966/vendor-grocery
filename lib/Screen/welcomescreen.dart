import 'package:flutter/material.dart';
import 'package:vendorgrocery/Screen/onboardscreen.dart';

class WelcomeScreen extends StatelessWidget {
  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                'Login',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                "Enter Your Number to Process",
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                    prefixText: '+91', labelText: "10 digit Mobile Number"),
                autofocus: true,
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(onPressed: () {}, child: Text("Enter Phone Number"))
            ],
          ),
        ),
      ),
    );
  }

  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            children: [
              Positioned(
                  right: 0.0,
                  top: 10.0,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // Background color
                      ),
                      onPressed: () {},
                      child: Text(
                        "Skip",
                        style: TextStyle(color: Colors.deepOrangeAccent),
                      ))),
              Column(
                children: [
                  Expanded(child: OnBoardScreen()),
                  Text(
                    "Ready to Order from your nearest Store",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrangeAccent, // Background color
                    ),
                    child: Text("Set Delivery Location"),
                    onPressed: () {},
                  ),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.resolveWith((states) => null),
                      // Add any other styles you want to customize
                    ),
                    child: RichText(
                      text: TextSpan(
                        text: "Already a Customer ? ",
                        style: TextStyle(color: Colors.grey),
                        children: [
                          TextSpan(
                            text: "Login",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrangeAccent),
                          ),
                        ],
                      ),
                    ),
                    onPressed: () {
                      showBottomSheet(context);
                    },
                  )
                ],
              ),
            ],
          )),
    );
  }
}
