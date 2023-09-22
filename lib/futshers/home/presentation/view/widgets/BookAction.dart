import 'package:flutter/material.dart';

import 'custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: CustomButton(
                onPressed: () {},
                backgroundcolor: Colors.white,
                textColor: Colors.black,
                text: '19.9',
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(12)))),
        Expanded(
            child: CustomButton(
                onPressed: () {},
                backgroundcolor: Colors.deepOrangeAccent,
                textColor: Colors.white,
                text: 'Free preview',
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(12))))
      ],
    );
  }
}
