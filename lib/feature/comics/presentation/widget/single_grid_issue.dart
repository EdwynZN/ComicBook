import 'package:comic_book/feature/comics/domain/model/issue.dart';
import 'package:comic_book/feature/comics/presentation/widget/image_issue.dart';
import 'package:comic_book/feature/comics/presentation/widget/title_issue.dart';
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
                pathParameters: {'issueId': issue.id.toString()},
                extra: issue,
              );
            },
            child: IssueImage(url: issue.imageUrl),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: TitleIssue(name: issue.completeName, date: issue.dateAdded),
          ),
        ),
      ],
    );
  }
}