/*
Exp1 : First Flutter App
To design a basic layout of Flutter App using Scaffold widget (Snack-Bar, Bottom-Navigation-Bar, Floating-Action-Button, App-Bar)
*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First Flutter App', style: TextStyle(fontSize: 20, color: Colors.white)),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: const Center(
          child: Text('Hello World!', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w500, color: Colors.black)),
        ),
        floatingActionButton: Builder(
            builder: (context) {
              return FloatingActionButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: const Text('SnackBar!!!!'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                backgroundColor: Colors.black,
                child: const Icon(Icons.add),
              );
            }
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}