import 'package:flutter/material.dart';
import 'package:google_search_clone/responsive/WebScreens/language_text.dart';

class TranslationView extends StatelessWidget {
  const TranslationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      alignment: WrapAlignment.center,
      children: [
        Text('Google offered in:'),
        SizedBox(width: 5),
        LanguageText(langText: ''),
        SizedBox(width: 5),
        LanguageText(langText: ''),
        SizedBox(width: 5),
        LanguageText(langText: ''),
        SizedBox(width: 5),
        LanguageText(langText: ''),
        SizedBox(width: 5),
        LanguageText(langText: ''),
        SizedBox(width: 5),
        LanguageText(langText: ''),
        SizedBox(width: 5),
        LanguageText(langText: ''),
      ],
    );
  }
}
