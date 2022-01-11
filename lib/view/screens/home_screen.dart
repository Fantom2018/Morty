import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mortybloc/bloc/character_bloc.dart';
import 'package:mortybloc/data/repositories/repository_reps.dart';
import 'package:mortybloc/view/screens/search_screen.dart';

class HomePage extends StatelessWidget {

   HomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  final repository = CharacterRepo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title:  Text(
          title,
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      body: BlocProvider(
        create: (context) => CharacterBloc(characterRepo: repository),
        child: Container(
            decoration: const BoxDecoration(color: Colors.purple),
            child: const SearchPage()),
      ),
    );
  }
}
