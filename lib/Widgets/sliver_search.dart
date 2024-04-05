import 'package:flutter/material.dart';

import '../components/constants.dart';


class SliverSearch extends StatelessWidget {
  const SliverSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      pinned: true,
      bottom: const PreferredSize(
          preferredSize: Size.fromHeight(-10.0), child: SizedBox()),
      flexibleSpace: const SearchBar(),
            automaticallyImplyLeading: false, // Disable the back arrow icon

    );
  }
}


class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding: kPadding,
      child: Container(
        
        margin: EdgeInsets.zero,
        color: Colors.transparent,
        child: Container(
          margin: EdgeInsets.zero,
          width: MediaQuery.of(context).size.width,
          height: 60,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: kBorderRadius / 2,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                const SizedBox(width: 12), // Empty space to vertically center the hint text
                const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                const SizedBox(width: 8,),
                Expanded(
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search your favourite.',
                      hintStyle: TextStyle(
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}