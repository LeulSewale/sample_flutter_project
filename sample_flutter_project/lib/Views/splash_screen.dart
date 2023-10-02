import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import GetX library
import 'LoginTextField.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Start the timer when the widget is built
    Future.delayed(Duration(seconds: 3), () {
      Get.off(() => LogInPage()); // Navigate to LogInPage using GetX
    });

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(right: 0, top: 0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color.fromRGBO(132, 132, 15, 1),
                ),
                child: const Center(
                  child: Text(
                    'Bellboy',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color.fromRGBO(132, 132, 15, 1),
                ),
                child: const Center(
                  child: Text(
                    'Fore rider',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
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
