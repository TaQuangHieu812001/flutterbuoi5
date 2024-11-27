import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant/color.dart';


class Header extends StatelessWidget {
  const Header({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          const Text(
            'See All',
            style: TextStyle(fontSize: 16, color: ListColor.hexBA83DE),
          )
        ],
      ),
    );
  }
}
