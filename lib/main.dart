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
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Navigate to home screen after 10 seconds
    Timer(const Duration(seconds: 10), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Background color
      body: Center(
        child: Image.asset(
          'assets/audiome_splash_screen.gif',  // Path to your GIF
          width: 250,  // Adjust as needed
          height: 250,  
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

// Dummy Home Screen
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text("Welcome to Audiome!", style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
