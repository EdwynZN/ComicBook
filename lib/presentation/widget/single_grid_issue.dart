import 'package:comic_book/model/issue.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SingleGridIssue extends StatelessWidget {
  final SimpleIssue issue;

  const SingleGridIssue({super.key, required this.issue});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: () {
              context.pushNamed(
                'issue_details',
                pathParameters: {'issueId': issue.id.toString()}
              );
            },
            child: IssueImage(url: issue.imageUrl),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text.rich(
              TextSpan(
                text: '${issue.name}\n',
                style: const TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  height: 1.25,
                ),
                children: [
                  TextSpan(
                    text: issue.date.toIso8601String(),
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
            ),
          ),
        ),
      ],
    );
  }
}

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
