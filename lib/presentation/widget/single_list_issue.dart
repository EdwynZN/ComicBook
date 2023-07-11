import 'package:comic_book/model/issue.dart';
import 'package:comic_book/presentation/widget/title_issue.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:comic_book/presentation/widget/image_issue.dart';

class SingleListIssue extends StatelessWidget {
  final SimpleIssue issue;

  const SingleListIssue({super.key, required this.issue});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.0,
      child: Column(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      context.pushNamed('issue_details',
                        pathParameters: {'issueId': issue.id.toString()},
                        extra: issue,
                      );
                    },
                    child: IssueImage(url: issue.imageUrl),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TitleIssue(name: issue.name, date: issue.date),
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 24.0, thickness: 1.0, color: Colors.black12),
        ],
      ),
    );
  }
}
