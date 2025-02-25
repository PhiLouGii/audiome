import 'package:audiome/main.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const AudiomeApp());
}

class AudiomeApp extends StatelessWidget {
  const AudiomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Text(
            "Tap to Identify",
            style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500
            ),
          ),
          const SizedBox(height: 20),

          // Central Big Button
          GestureDetector(
            onTap: () {
              // Action when tapped (later, this will trigger recognition)
              print("Listening...");
            },
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blueAccent.withOpacity(0.8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepPurpleAccent.withOpacity(0.5),
                    blurRadius: 20,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Center(
                child: Icon(
                  Icons.mic,
                  size: 70,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          const Spacer(),

          // Bottom Section
          Text(
            "Powered by AudioMe",
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}