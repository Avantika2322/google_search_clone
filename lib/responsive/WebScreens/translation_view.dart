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
        LanguageText(langText: 'Hindi'),
        SizedBox(width: 5),
        LanguageText(langText: 'English'),
        SizedBox(width: 5),
        LanguageText(langText: 'Marathi'),
        SizedBox(width: 5),
        LanguageText(langText: 'Bengali'),
        SizedBox(width: 5),
        LanguageText(langText: 'Telugu'),
        SizedBox(width: 5),
        LanguageText(langText: 'Tamil'),
        SizedBox(width: 5),
        LanguageText(langText: 'Gujarati'),
        SizedBox(width: 5),
        LanguageText(langText: 'Punjabi'),
      ],
    );
  }
}
