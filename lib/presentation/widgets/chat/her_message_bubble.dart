import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: colors.secondary,
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 20,
            ),
            child: Text(
              "Hola juan carlo",
              style: TextStyle(
                fontStyle: FontStyle.normal,
                color: Color.fromARGB(153, 244, 247, 246),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
