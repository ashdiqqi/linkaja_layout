import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class FourSection extends StatelessWidget {
  Column _buildFourSection(IconData icon, String label, double iconSize) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Center(
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 13,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildFourSection(Icons.phone_android, 'Pulsa/Data', 30),
              _buildFourSection(Icons.bolt, 'Electricity', 30),
              _buildFourSection(Icons.credit_card, 'BPJS', 30),
              _buildFourSection(Icons.sports_esports, 'mgames', 30),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildFourSection(Icons.wifi, 'Cable TV \n& Internet', 30),
              _buildFourSection(Icons.water_drop, 'PDAM', 30),
              _buildFourSection(
                  Icons.credit_card, 'Kartu Uang \nElektronik', 30),
              _buildFourSection(Icons.more_horiz, 'More', 40),
            ],
          ),
        ),
      ],
    );
  }
}
