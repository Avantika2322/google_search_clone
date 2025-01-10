import 'package:flutter/material.dart';
import 'package:google_search_clone/responsive/CommonViews/search_tab.dart';

class SearchTabsLayout extends StatelessWidget{
  const SearchTabsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return const SizedBox(
      height: 55,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SearchTab(tabIcon: Icons.search, tabText: 'All',isActive: true,),
          SizedBox(width: 20),
          SearchTab(tabIcon: Icons.image, tabText: 'Images',),
          SizedBox(width: 20),
          SearchTab(tabIcon: Icons.map, tabText: 'Maps',),
          SizedBox(width: 20),
          SearchTab(tabIcon: Icons.article, tabText: 'News',),
          SizedBox(width: 20),
          SearchTab(tabIcon: Icons.shop_2, tabText: 'Shopping',),
          SizedBox(width: 20),
          SearchTab(tabIcon: Icons.more_vert, tabText: 'More',),
          SizedBox(width: 20),
        ],
      ),
    );
  }

}