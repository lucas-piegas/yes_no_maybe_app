import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  final String text;

  const MyMessageBubble({
    super.key,
    required this.text,
  });

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
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 20,
            ),
            child: Text(
              text,
              style: const TextStyle(
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
