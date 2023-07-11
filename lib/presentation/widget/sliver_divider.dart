import 'package:flutter/material.dart';

class SliverDivider extends StatelessWidget {
  final double? height;
  final double? thickness;
  final Color? color;
  final double? indent;
  final double? endIndent;

  const SliverDivider({
    Key? key,
    this.height,
    this.thickness,
    this.color,
    this.indent,
    this.endIndent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Divider(
        color: color,
        thickness: thickness,
        height: height,
        indent: indent,
        endIndent: endIndent,
      ),
    );
  }
}
