import 'package:flutter/material.dart';
import 'package:google_search_clone/colors.dart';

class LanguageText extends StatelessWidget {
  final String langText;

  const LanguageText({super.key, required this.langText});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(
        langText,
        style: const TextStyle(color: blueColor),
      ),
    );
  }
}
