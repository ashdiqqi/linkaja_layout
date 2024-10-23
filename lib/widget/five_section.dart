import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class FiveSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildImageCard('asset/1.jpg'),
            const SizedBox(width: 12),
            _buildImageCard('asset/2.jpg'),
            const SizedBox(width: 12),
            _buildImageCard('asset/3.jpg'),
            const SizedBox(width: 12),
            _buildImageCard('asset/4.jpg'),
          ],
        ),
      ),
    );
  }

  Widget _buildImageCard(String imagePath) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: SizedBox(
        height: 140,
        width: 300,
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(
            imagePath,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
