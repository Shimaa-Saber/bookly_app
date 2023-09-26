import 'package:flutter/cupertino.dart';

import '../../../../../core/utilties/assets.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({Key? key, required this.ImageUrl}) : super(key: key);
final String ImageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image:  DecorationImage(
                fit: BoxFit.fill, image: NetworkImage(ImageUrl)),
          ),
        ),
      ),
    );
  }
}
