import 'package:flutter/material.dart';

class IssueImage extends StatelessWidget {
  final String url;

  const IssueImage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff7c94b6),
        image: DecorationImage(
          image: NetworkImage(url),
          fit: BoxFit.fill,
        ),
        border: Border.all(width: 2, color: Colors.black),
      ),
    );
  }
}
