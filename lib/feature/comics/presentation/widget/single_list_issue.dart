import 'package:comic_book/feature/comics/domain/model/issue.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:comic_book/shared/utils/space_gaps.dart';
import 'package:comic_book/feature/comics/presentation/widget/image_issue.dart';

class SingleListIssue extends StatelessWidget {
  final SimpleIssue issue;

  const SingleListIssue({super.key, required this.issue});

  @override
  Widget build(BuildContext context) {
    final localizations = MaterialLocalizations.of(context);
    final locDate = localizations.formatShortDate(issue.dateAdded);
    final title = Text(
      issue.completeName,
      style: const TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w700,
        height: 1.25,
      ),
      textAlign: TextAlign.center,
    );
    final date = Text(
      locDate,
      style: const TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        height: 1.25,
      ),
      textAlign: TextAlign.center,
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            context.pushNamed(
              'issue_details',
              pathParameters: {'issueId': issue.id.toString()},
              extra: issue,
            );
          },
          child: AspectRatio(
            aspectRatio: 11 / 16,
            child: IssueImage(url: issue.imageUrl),
          ),
        ),
        gap16,
        title,
        gap8,
        date,
        const Divider(height: Space(3)),
      ],
    );
  }
}
