import 'package:flutter/material.dart';
import 'package:google_search_clone/colors.dart';
import 'package:google_search_clone/responsive/CommonViews/search_footer.dart';
import 'package:google_search_clone/responsive/CommonViews/search_header.dart';
import 'package:google_search_clone/responsive/CommonViews/search_result_view.dart';
import 'package:google_search_clone/responsive/CommonViews/search_tabs_layout.dart';
import 'package:google_search_clone/services/api_services.dart';

class SearchScreen extends StatelessWidget {
  final String searchQuery;
  final String start;

  const SearchScreen(
      {super.key, required this.searchQuery, required this.start});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Title(
      color: Colors.blue,
      title: searchQuery,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //web header
              const SearchHeader(),
      
              // tabs for news, images etc
              Padding(
                padding: EdgeInsets.only(left: size.width <= 760 ?10 : 150),
                child: const SearchTabsLayout(),
              ),
              const Divider(
                height: 0,
                thickness: 0.5,
              ),
      
              // search result
              FutureBuilder(
                future:
                    ApiService().fetchData(queryTerm: searchQuery, start: start),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: size.width <= 768 ? 10 : 150, top: 12),
                          child: Text(
                            "About ${snapshot.data?['searchInformation']['formattedTotalResults']} results (${snapshot.data?['searchInformation']['formattedSearchTime']} seconds)",
                            style: const TextStyle(
                              color: Color(0xFF70757a),
                              fontSize: 15,
                            ),
                          ),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: snapshot.data?['items'].length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(left: size.width <= 760 ?10 : 150, top: 12),
                              child: SearchResultView(
                                linkToGo: snapshot.data?['items'][index]['link'],
                                url: snapshot.data?['items'][index]
                                    ['formattedUrl'],
                                title: snapshot.data?['items'][index]['title'],
                                desc: snapshot.data?['items'][index]['snippet'],
                              ),
                            );
                          },
                        ),
                      ],
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
              //pagination button
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        if (start != "0") {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => SearchScreen(
                                  searchQuery: searchQuery, start: (int.parse(start)-10).toString()),
                            ),
                          );
                        }
                      },
                      child: const Text(
                        '< Prev',
                        style: TextStyle(color: blueColor, fontSize: 15),
                      ),
                    ),
                    const SizedBox(width: 30),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SearchScreen(
                                searchQuery: searchQuery, start: (int.parse(start)+10).toString()),
                          ),
                        );
                      },
                      child: const Text(
                        'Next >',
                        style: TextStyle(color: blueColor, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const SearchFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
