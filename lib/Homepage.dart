import 'package:flutter/material.dart';
import 'package:ui_second/login_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 165, 175, 183),
        title: const Text(
          "Home Page",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: true,
      ),
      backgroundColor: const Color.fromARGB(255, 144, 184, 91),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome! You are loged in.",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 90,
            ),
            ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 22, 21, 21)),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "LOGOUT",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
  
