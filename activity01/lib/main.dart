import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:activity01/widgets/header.widget.dart';
import 'package:activity01/widgets/name.widget.dart';
import 'package:activity01/widgets/subject.widget.dart';
import 'package:activity01/widgets/toggleButton.widget.dart';
import 'package:activity01/widgets/toggledMessage.widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          headlineLarge: GoogleFonts.inter(
            fontSize: 50,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
          headlineMedium: GoogleFonts.inter(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          bodyMedium: GoogleFonts.inter(
            fontSize: 18,
          ),
          labelLarge: GoogleFonts.inter(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String message = "Welcome to Mobile Application Development!";
  String name = "Mark Jerome Santos";
  String subject = "PDC03 - Mobile Programming";
  bool toggle = false;

  void _showMessage() {
    setState(() {
      toggle = !toggle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            // Container holding the image and the toggled message
            Container(
              height: MediaQuery.of(context).size.height *
                  0.6, // 60% of screen height
              width: double.infinity,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/PDC03.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: toggle
                    ? ToggledMessage(message: message)
                    : const SizedBox
                        .shrink(), // Hide message if toggle is false
              ),
            ),
            // Remaining 40% of space for Name, Subject, and Button
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NameWidget(name: name),
                    SubjectWidget(subject: subject),
                    const SizedBox(height: 20),
                    ToggleMessageButton(
                      toggle: toggle,
                      onPressed: _showMessage,
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
