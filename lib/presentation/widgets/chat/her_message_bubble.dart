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
        _ImageBubble(),
        const SizedBox(height: 10),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Image.network(
        'https://yesno.wtf/assets/no/32-b62f1f8058c1d7f06c528319faccfb38.gif',
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            child: const Center(
              child: Text('Enviando imagen...'),
            ),
          );
        },
      ),
    );
  }
}
