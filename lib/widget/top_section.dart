import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // ignore: avoid_unnecessary_containers
        Container(
          child: SizedBox(
            height: 55,
            width: 55,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 3, // Sesuaikan dengan kebutuhan Anda
              // shadowColor: const Color.fromARGB(255, 27, 27, 27),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                'asset/LinkAja.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        // ignore: avoid_unnecessary_containers
        Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: Card(
                  semanticContainer: true,
                  // clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 3, // Sesuaikan dengan kebutuhan Anda
                  shadowColor: const Color.fromARGB(255, 27, 27, 27),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.discount,
                    size: 26,
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              SizedBox(
                height: 50,
                width: 50,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  elevation: 3, // Sesuaikan dengan kebutuhan Anda
                  // shadowColor: const Color.fromARGB(255, 27, 27, 27),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.favorite_border,
                    size: 27,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
