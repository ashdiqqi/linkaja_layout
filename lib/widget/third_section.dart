import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ThirdSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 18, right: 4, left: 4),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 28),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildButtonColumn(Icons.payment, 'TopUp'),
          _buildButtonColumn(Icons.attach_money, 'Send Money'),
          _buildButtonColumn(Icons.confirmation_number, 'Ticket Code'),
          _buildButtonColumn(Icons.apps_rounded, 'See All'),
        ],
      ),
    );
  }

  Widget _buildButtonColumn(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon),
        Container(
          margin: const EdgeInsets.only(top: 5),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 10,
            ),
          ),
        ),
      ],
    );
  }
}
