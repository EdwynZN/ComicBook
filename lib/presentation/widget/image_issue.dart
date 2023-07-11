import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class IssueImage extends StatelessWidget {
  final String url;

  const IssueImage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: BoxFit.fill,
      placeholder: (context, url) =>
        const Center(child: CircularProgressIndicator.adaptive()),
      imageBuilder: (context, imageProvider) {
        return Container(
          decoration: BoxDecoration(
            color: const Color(0xFF7C94B6),
            border: Border.all(width: 2, color: Colors.black),
            image: DecorationImage(image: imageProvider, fit: BoxFit.fill)
          ),
        );
      },
      imageUrl: url,
    );
  }
}
