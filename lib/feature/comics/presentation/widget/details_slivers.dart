import 'package:comic_book/feature/comics/domain/model/comic_character.dart';
import 'package:comic_book/feature/comics/domain/model/comic_object.dart';
import 'package:comic_book/feature/comics/domain/model/concept.dart';
import 'package:comic_book/feature/comics/domain/model/issue.dart';
import 'package:comic_book/feature/comics/domain/model/location.dart';
import 'package:comic_book/feature/comics/domain/model/person.dart';
import 'package:comic_book/feature/comics/domain/model/story_arc.dart';
import 'package:comic_book/feature/comics/domain/model/team.dart';
import 'package:comic_book/feature/comics/presentation/widget/sliver_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sliver_tools/sliver_tools.dart';

/// Pattern to pass data and title to a table
typedef _DetailsTable = ({String data, String title});

const _kDefaultCrossAxisCount = SliverGridDelegateWithFixedCrossAxisCount(
  crossAxisCount: 2,
  mainAxisExtent: 32.0,
  crossAxisSpacing: 12.0,
  mainAxisSpacing: 12.0,
);

class DetailsSliver extends HookWidget {
  final DetailedIssue detailedIssue;

  const DetailsSliver({super.key, required this.detailedIssue});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final localizations = MaterialLocalizations.of(context);
    final rows = useMemoized(() {
      final name = detailedIssue.name;
      final number = detailedIssue.number;
      final coverDate = detailedIssue.coverDate;
      final storeDate = detailedIssue.storeDate;
      final volume = detailedIssue.volume;
      final list = [
        if (name != null) (data: name, title: 'Name'),
        (data: volume.name, title: 'Volume'),
        (data: number, title: 'Issue Number'),
        if (coverDate != null)
          (
            data: localizations.formatShortDate(coverDate),
            title: 'Cover Date',
          ),
        if (storeDate != null)
          (
            data: localizations.formatShortDate(storeDate),
            title: 'In Store Date',
          ),
      ];
      return List<TableRow>.generate(
        list.length,
        (index) {
          final _DetailsTable detail = list[index];
          return TableRow(
            decoration: BoxDecoration(
              color: index.isEven ? Colors.white : const Color(0xFFECEDEE),
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  detail.title,
                  style: textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  maxLines: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  detail.data,
                  style: textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          );
        },
        growable: false,
      );
    }, [detailedIssue, textTheme, localizations]);
    return SliverCrossAxisConstrained(
      maxCrossAxisExtent: 420.0,
      alignment: 0.0,
      child: SliverPadding(
        padding: const EdgeInsets.all(16.0),
        sliver: SliverToBoxAdapter(
          child: Center(
            child: Card(
              borderOnForeground: true,
              elevation: 0.0,
              color: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.zero),
                side: BorderSide(
                  color: Color(0xFFD3CFCF),
                  width: 3.0,
                ),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Issue details',
                        style: TextStyle(
                          fontSize: 18.0,
                          height: 1.3,
                          letterSpacing: 0.25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    const Divider(height: 16.0, thickness: 1.0),
                    Table(
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: rows,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LocationSliver extends StatelessWidget {
  final List<Location> locations;

  const LocationSliver({super.key, required this.locations});

  @override
  Widget build(BuildContext context) {
    final Widget sliver;
    if (locations.isEmpty) {
      sliver = const SliverToBoxAdapter(
        child: Center(
          child: Text('No locations recorded'),
        ),
      );
    } else {
      sliver = SliverGrid.builder(
        gridDelegate: _kDefaultCrossAxisCount,
        itemCount: locations.length,
        itemBuilder: (_, index) {
          return Text(locations[index].name);
        },
      );
    }
    return _BlockSliver(
      title: 'Locations',
      sliver: sliver,
    );
  }
}

class StoryArcSliver extends StatelessWidget {
  final List<StoryArc> arcs;

  const StoryArcSliver({super.key, required this.arcs});

  @override
  Widget build(BuildContext context) {
    final Widget sliver;
    if (arcs.isEmpty) {
      sliver = const SliverToBoxAdapter(
        child: Center(
          child: Text('No story arcs recorded'),
        ),
      );
    } else {
      sliver = SliverGrid.builder(
        gridDelegate: _kDefaultCrossAxisCount,
        itemCount: arcs.length,
        itemBuilder: (_, index) {
          return Text(arcs[index].name);
        },
      );
    }
    return _BlockSliver(title: 'Story Arcs', sliver: sliver);
  }
}

class ConceptSliver extends StatelessWidget {
  final List<Concept> concepts;

  const ConceptSliver({super.key, required this.concepts});

  @override
  Widget build(BuildContext context) {
    final Widget sliver;
    if (concepts.isEmpty) {
      sliver = const SliverToBoxAdapter(
        child: Center(
          child: Text('No concepts recorded'),
        ),
      );
    } else {
      sliver = SliverGrid.builder(
        gridDelegate: _kDefaultCrossAxisCount,
        itemCount: concepts.length,
        itemBuilder: (_, index) {
          return Text(concepts[index].name);
        },
      );
    }
    return _BlockSliver(title: 'Concepts', sliver: sliver);
  }
}

class ComicObjectSliver extends StatelessWidget {
  final List<ComicObject> comicObjects;

  const ComicObjectSliver({super.key, required this.comicObjects});

  @override
  Widget build(BuildContext context) {
    final Widget sliver;
    if (comicObjects.isEmpty) {
      sliver = const SliverToBoxAdapter(
        child: Center(
          child: Text('No objects recorded'),
        ),
      );
    } else {
      sliver = SliverGrid.builder(
        gridDelegate: _kDefaultCrossAxisCount,
        itemCount: comicObjects.length,
        itemBuilder: (_, index) {
          return Text(comicObjects[index].name);
        },
      );
    }
    return _BlockSliver(title: 'Objects', sliver: sliver);
  }
}

class TeamsSliver extends StatelessWidget {
  final List<Team> teams;

  const TeamsSliver({super.key, required this.teams});

  @override
  Widget build(BuildContext context) {
    final Widget sliver;
    if (teams.isEmpty) {
      sliver = const SliverToBoxAdapter(
        child: Center(
          child: Text('No teams recorded'),
        ),
      );
    } else {
      sliver = SliverGrid.builder(
        gridDelegate: _kDefaultCrossAxisCount,
        itemCount: teams.length,
        itemBuilder: (_, index) {
          return Text(teams[index].name);
        },
      );
    }
    return _BlockSliver(title: 'Teams', sliver: sliver);
  }
}

class CreatorsSliver extends StatelessWidget {
  final List<Person> creators;

  const CreatorsSliver({super.key, required this.creators});

  @override
  Widget build(BuildContext context) {
    final Widget sliver;
    if (creators.isEmpty) {
      sliver = const SliverToBoxAdapter(
        child: Center(
          child: Text('No creators recorded'),
        ),
      );
    } else {
      sliver = SliverGrid.builder(
        gridDelegate: _kDefaultCrossAxisCount,
        itemCount: creators.length,
        itemBuilder: (_, index) {
          final creator = creators[index];
          final name = creator.name;
          final role = creator.role;
          return Text.rich(
            TextSpan(
              text: '$name\n',
              children: [
                TextSpan(
                  text: role,
                  style: const TextStyle(
                    color: Color(0xFF757575),
                    fontSize: 11.0,
                  ),
                ),
              ],
            ),
            overflow: TextOverflow.clip,
          );
        },
      );
    }
    return _BlockSliver(title: 'Creators', sliver: sliver);
  }
}

class CharactersSliver extends StatelessWidget {
  final List<ComicCharacter> characters;

  const CharactersSliver({super.key, required this.characters});

  @override
  Widget build(BuildContext context) {
    final Widget sliver;
    if (characters.isEmpty) {
      sliver = const SliverToBoxAdapter(
        child: Center(
          child: Text('No characters recorded'),
        ),
      );
    } else {
      sliver = SliverGrid.builder(
        gridDelegate: _kDefaultCrossAxisCount,
        itemCount: characters.length,
        itemBuilder: (_, index) {
          return Text(characters[index].name);
        },
      );
    }
    return _BlockSliver(title: 'Characters', sliver: sliver);
  }
}

class _BlockSliver extends StatelessWidget {
  final Widget sliver;
  final String title;

  const _BlockSliver({
    // ignore: unused_element
    super.key,
    required this.title,
    required this.sliver,
  });

  @override
  Widget build(BuildContext context) {
    return MultiSliver(
      children: [
        SliverToBoxAdapter(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18.0,
              height: 1.3,
              letterSpacing: 0.25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SliverDivider(height: 16.0, thickness: 0.5, color: Colors.black),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
          sliver: sliver,
        ),
      ],
    );
  }
}
