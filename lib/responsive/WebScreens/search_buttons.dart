import 'package:flutter/material.dart';
import 'package:google_search_clone/responsive/WebScreens/search_button.dart';

class SearchButtons extends StatelessWidget {
  const SearchButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SearchButton(btnText: 'Google Search'),
            SizedBox(
              width: 10,
            ),
            SearchButton(btnText: 'I\'m feeling Lucky'),
          ],
        ),
      ],
    );
  }
}
