import 'package:flutter/material.dart';

class TitleIssue extends StatelessWidget {
  final String name;
  final DateTime date;

  const TitleIssue({
    super.key,
    required this.name,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    final localizations = MaterialLocalizations.of(context);
    final locDate = localizations.formatShortDate(date);
    return Text.rich(
      TextSpan(
        text: '$name\n',
        style: const TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.w600,
          color: Colors.black,
          height: 1.25,
        ),
        children: [
          TextSpan(
            text: locDate,
            style: const TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.5,
              color: Color(0XFFBCBCBC),
              height: 1.75,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
