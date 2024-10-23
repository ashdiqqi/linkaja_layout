import 'package:flutter/material.dart';
import './widget/top_section.dart';
import './widget/second_section.dart';
import './widget/third_section.dart';
import './widget/four_section.dart';
import './widget/five_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('LinkAja'),
          backgroundColor: const Color.fromARGB(255, 224, 29, 15),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType
              .fixed, // Menambahkan tipe fixed agar semua item terlihat
          selectedItemColor: Colors.black, // Warna item yang dipilih
          unselectedItemColor: Colors.black, // Warna item yang tidak dipilih
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.paypal),
              label: 'Pay',
            ),
            BottomNavigationBarItem(
              // Menu Profile dengan warna hitam
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
        body: Container(
          color: const Color(0xFFF5F7F8),
          child: ListView(
            padding: const EdgeInsets.all(15),
            children: [
              TopSection(),
              const SecondSection(),
              ThirdSection(),
              FourSection(),
              FiveSection(),
            ],
          ),
        ),
      ),
    );
  }
}
