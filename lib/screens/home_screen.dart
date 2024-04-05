import 'package:flutter/material.dart';
import 'package:rive_animation/Widgets/sliver_app_bar.dart';
import 'package:rive_animation/Widgets/sliver_list.dart';
import 'package:rive_animation/Widgets/sliver_search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      body: CustomScrollView(
        slivers: [
          SliverAppBarBldr(),
          SliverSearch(),
          SliverListBldr(),
        ],
      ),
    );
  }
}