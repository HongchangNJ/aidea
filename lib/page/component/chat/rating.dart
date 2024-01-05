import 'package:askaide/page/component/enhanced_button.dart';
import 'package:flutter/material.dart';

class RatingBox extends StatelessWidget {
  final void Function(int rating) onRating;

  const RatingBox({super.key, required this.onRating});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('你觉得这个回答怎么样？'),
        const SizedBox(height: 10),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            EnhancedButton(
              title: '不好',
              width: 80,
              height: 30,
              fontSize: 13,
              backgroundColor: const Color.fromARGB(120, 244, 67, 54),
              icon: const Icon(
                Icons.thumb_down_alt,
                size: 13,
                color: Colors.white,
              ),
              onPressed: () {
                onRating(1);
              },
            ),
            const SizedBox(width: 10),
            EnhancedButton(
              title: '好',
              width: 80,
              height: 30,
              fontSize: 13,
              backgroundColor: const Color.fromARGB(120, 76, 175, 79),
              icon: const Icon(
                Icons.thumb_up_alt,
                size: 13,
                color: Colors.white,
              ),
              onPressed: () {
                onRating(5);
              },
            ),
          ],
        ),
      ],
    );
  }
}
