import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant/color.dart';

class Progress extends StatelessWidget {
  const Progress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: ListColor.hex181818,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Daily Task',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '2/3 Task Completed',
            style: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  'You are almost done go ahead',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 14,
                  ),
                ),
              ),
              const Text(
                '66%',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Stack(
            children: [
              Container(
                height: 18,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: ListColor.hexBA83DE.withOpacity(0.41),
                ),
              ),
              FractionallySizedBox(
                widthFactor: 0.66,
                child: Container(
                  height: 18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ListColor.hexBA83DE,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
