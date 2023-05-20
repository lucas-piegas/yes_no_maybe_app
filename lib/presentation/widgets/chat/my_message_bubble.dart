import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: colors.primary,
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 20,
            ),
            child: Text(
              "Hola chicheeeeeeee",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white60,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
