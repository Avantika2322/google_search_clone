import 'package:flutter/material.dart';
import 'package:google_search_clone/responsive/CommonViews/search_header.dart';

class SearchScreen extends StatelessWidget{
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //web header
            SearchHeader()

            // tabs for news, images etc
            // search result
            //pagination button
          ],
        ),
      ),
    );
  }

}