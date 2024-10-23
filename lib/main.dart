import 'package:flutter/material.dart';
import './widget/top_section.dart';
import './widget/second_section.dart';
import './widget/third_section.dart';
import './widget/four_section.dart';
import './widget/five_section.dart';
import './widget/history_page.dart'; // Import halaman baru History

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 1) {
      // Jika menu History dipilih, navigasi ke halaman History
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HistoryPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LinkAja'),
        backgroundColor: const Color.fromARGB(255, 224, 29, 15),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex, // Mengontrol item yang dipilih
        onTap: _onItemTapped, // Menangani logika saat item diklik
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
    );
  }
}
