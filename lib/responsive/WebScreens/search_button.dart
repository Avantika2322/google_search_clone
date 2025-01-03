import 'package:flutter/material.dart';
import 'package:google_search_clone/colors.dart';

class SearchButton extends StatelessWidget {
  final String btnText;

  const SearchButton({super.key, required this.btnText});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 18,
      ),
      color: searchColor,
      elevation: 0,
      child: Text(btnText),
    );
  }
}
