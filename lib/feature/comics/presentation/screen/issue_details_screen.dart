import 'package:cached_network_image/cached_network_image.dart';
import 'package:comic_book/feature/comics/presentation/bloc/details/details_issue_bloc.dart';
import 'package:comic_book/feature/comics/domain/model/issue.dart';
import 'package:comic_book/shared/utils/state.dart';
import 'package:comic_book/feature/comics/presentation/widget/details_slivers.dart';
import 'package:comic_book/feature/comics/presentation/widget/error_button.dart';
import 'package:comic_book/feature/comics/presentation/widget/image_issue.dart';
import 'package:comic_book/feature/comics/domain/repository/comic_book_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IssueDetailsScreen extends StatelessWidget {
  final String url;
  final String? name;
  final String? issueNumber;

  const IssueDetailsScreen({
    super.key,
    required this.url,
    this.name,
    this.issueNumber,
  });

  IssueDetailsScreen.fromIssue({
    super.key,
    required this.url,
    required SimpleIssue issue,
  })  : name = issue.name,
        issueNumber = issue.number;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DetailsIssuesBloc>(
      lazy: false,
      create: (context) {
        final repository = RepositoryProvider.of<ComicBookRepository>(
          context,
          listen: false,
        );
        return DetailsIssuesBloc(repository: repository, url: url);
      },
      child: Scaffold(
        body: _DetailIssueBody(
          issueNumber: issueNumber,
          name: name,
        ),
      ),
    );
  }
}

/// Assert that at least one is not null
class _Title extends StatelessWidget {
  final String? title;
  final String? subtitle;

  const _Title({
    // ignore: unused_element
    super.key,
    required this.title,
    this.subtitle,
  }) : assert(title != null || subtitle != null);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: title ?? 'ComicBook',
        children: [
          if (title != null)
            TextSpan(
              text: '   #$subtitle',
              style: const TextStyle(
                fontSize: 16.0,
                letterSpacing: -1.25,
                color: Color(0xFFBEBCBC),
                fontWeight: FontWeight.w600,
              ),
            ),
        ],
      ),
      maxLines: 2,
      overflow: TextOverflow.clip,
      style: const TextStyle(
        fontSize: 28.0,
        letterSpacing: -1.25,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}

class _DetailIssueBody extends StatelessWidget {
  final String? name;
  final String? issueNumber;

  const _DetailIssueBody({
    // ignore: unused_element
    super.key,
    this.name,
    this.issueNumber,
  });

  @override
  Widget build(BuildContext context) {
    final state = context.watch<DetailsIssuesBloc>().state;
    final size = MediaQuery.sizeOf(context);
    final List<Widget> sliver = [
      SliverAppBar.large(
        leading: const BackButton(),
        backgroundColor: const Color(0xFF232628),
        foregroundColor: Colors.white,
        titleTextStyle: const TextStyle(color: Colors.white),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
        ),
        title: BlocBuilder<DetailsIssuesBloc, BState<DetailedIssue>>(
          builder: (context, state) {
            if (state case DataValue<DetailedIssue> s when s.value != null) {
              final value = s.value!;
              return _Title(
                title: value.name ?? value.volume.name,
                subtitle: value.number,
              );
            } else if (name != null || issueNumber != null) {
              return _Title(title: name, subtitle: issueNumber);
            } else {
              return const SizedBox();
            }
          },
        ),
      ),
    ];
    final DetailedIssue detailedIssue;
    if (state case LoadingState()) {
      sliver.add(
        const SliverFillRemaining(
          hasScrollBody: false,
          child: Center(child: CircularProgressIndicator.adaptive()),
        ),
      );
    } else if (state case ErrorState()) {
      sliver.add(
        SliverFillRemaining(
          hasScrollBody: false,
          child: Center(
            child: ErrorButton(
              message: state.failure.message,
              onPressed: () => context.read<DetailsIssuesBloc>().retry(),
            ),
          ),
        ),
      );
    }
    if (state case DataValue<DetailedIssue>(: final value) when value != null) {
      detailedIssue = value;
    } else {
      return CustomScrollView(slivers: sliver);
    }
    sliver.addAll([
      DetailsSliver(detailedIssue: detailedIssue),
      SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        sliver: CreatorsSliver(creators: detailedIssue.people),
      ),
      SliverPadding(
        padding: const EdgeInsets.all(16.0),
        sliver: CharactersSliver(characters: detailedIssue.characters),
      ),
      SliverPadding(
        padding: const EdgeInsets.all(16.0),
        sliver: TeamsSliver(teams: detailedIssue.teams),
      ),
      SliverPadding(
        padding: const EdgeInsets.all(16.0),
        sliver: LocationSliver(locations: detailedIssue.locations),
      ),
      SliverPadding(
        padding: const EdgeInsets.all(16.0),
        sliver: ConceptSliver(concepts: detailedIssue.concepts),
      ),
      SliverPadding(
        padding: const EdgeInsets.all(16.0),
        sliver: ComicObjectSliver(comicObjects: detailedIssue.comicObjects),
      ),
      SliverSafeArea(
        top: false,
        sliver: SliverPadding(
          padding: const EdgeInsets.all(16.0),
          sliver: StoryArcSliver(arcs: detailedIssue.storyArcs),
        ),
      ),
    ]);

    /// For larger screens
    if (size.width > 600) {
      return Row(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: CustomScrollView(
                slivers: sliver,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 4.0, 0.0, 8.0),
                child: AspectRatio(
                  aspectRatio: 1 / 1.5,
                  child: CachedNetworkImage(
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                    imageUrl: detailedIssue.imageUrl,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    }

    /// Mobile version.
    ///
    /// We insert the image at the beginning of the scroll
    sliver.insert(
      1,
      SliverToBoxAdapter(
        child: Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(color: Colors.grey.shade700),
          child: Container(
            margin: const EdgeInsets.only(top: 24.0),
            decoration: ShapeDecoration(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
              ),
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: IssueImage(
                height: 180.0,
                width: 120.0,
                url: detailedIssue.imageUrl,
              ),
            ),
          ),
        ),
      ),
    );
    return CustomScrollView(slivers: sliver);
  }
}
