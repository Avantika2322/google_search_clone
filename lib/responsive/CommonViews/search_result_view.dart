import 'package:flutter/material.dart';
import 'package:google_search_clone/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchResultView extends StatefulWidget {
  final String url;
  final String title;
  final String linkToGo;
  final String desc;

  const SearchResultView({super.key, required this.url, required this.title, required this.linkToGo, required this.desc});

  @override
  State<SearchResultView> createState() => _SearchResultViewState();
}

class _SearchResultViewState extends State<SearchResultView> {
  bool _showUnderline = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.url),
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: () async {
              if (await canLaunchUrl(widget.linkToGo as Uri)) {
                await launchUrl(widget.linkToGo as Uri);
              }
            },
            onHover: (hovering) {
              setState(() {
                _showUnderline = hovering;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.url,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF202124),
                  ),
                ),
                Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: blueColor,
                    decoration: _showUnderline ? TextDecoration.underline : TextDecoration.none
                  ),
                ),
              ],
            ),
          ),
        ),
        Text(widget.desc, style: const TextStyle(fontSize: 14, color: primaryColor),),
        const SizedBox(height: 10),
      ],
    );
  }
}
