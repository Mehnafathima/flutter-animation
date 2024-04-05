import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../components/constants.dart';

class SliverListBldr extends StatelessWidget {
  const SliverListBldr({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(left: kSpacing, bottom: 20, right: 10),
            child: Shimmer(
              interval:
                  Duration(seconds: 2), 
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: kBorderRadius,
                  color: Colors.black,
                ),
                height: 200,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          );
        },
        childCount: 20,
      ),
    );
  }
}
