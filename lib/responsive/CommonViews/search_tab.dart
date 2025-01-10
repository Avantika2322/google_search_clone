import 'package:flutter/material.dart';
import 'package:google_search_clone/colors.dart';

class SearchTab extends StatelessWidget {
  final IconData tabIcon;
  final bool isActive;
  final String tabText;

  const SearchTab(
      {super.key,
      required this.tabIcon,
      this.isActive = false,
      required this.tabText});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              tabIcon,
              size: 19,
              color: isActive ? blueColor : Colors.grey,
            ),
            const SizedBox(width: 7),
            Text(
              tabText,
              style: TextStyle(
                fontSize: 15,
                color: isActive ? blueColor : Colors.grey,
              ),
            ),
          ],
        ),
        const SizedBox(height: 7,),
        isActive?Container(
          height: 3,
          width: 40,
          color: blueColor,
        ): Container(),
      ],
    );
  }
}
