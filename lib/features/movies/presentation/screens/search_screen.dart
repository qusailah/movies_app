import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movies_riverpod/features/movies/presentation/providers/movies_state_notifier_provider.dart';

import '../../../../core/network/network_values.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    ref.read(searchedMoviesStateNotifier.notifier).getMovies(
        type: EndPoints.searchMovie(
            "godfather"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final searchResult = ref.watch(searchedMoviesStateNotifier);
    return Scaffold(
        body: Column(
      children: [
        TextField(
          controller: _controller,
          onSubmitted: (value) {

          },
        ),
        Text(searchResult.movies.first.title)
      ],
    ));
  }
}
