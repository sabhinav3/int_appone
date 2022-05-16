import 'package:flutter/material.dart';

class CardBar extends StatelessWidget {
  final double time;
  const CardBar({Key? key, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(time.floor(), (index) {
        return const Icon(
          // Icons.star,
          Icons.watch_later_rounded,
          color: Colors.white,
          size: 16,
        );
      }),
    );
  }
}
