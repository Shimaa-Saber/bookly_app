import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilties/assets.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({Key? key, required this.ImageUrl}) : super(key: key);
final String ImageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: ImageUrl,
          errorWidget: (context, url, error) =>
            Icon(Icons.error)
          ,
        )
      ),
    );
  }
}
