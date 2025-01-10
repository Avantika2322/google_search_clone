import 'dart:convert';

import 'package:google_search_clone/config/api_keys.dart';
import 'package:google_search_clone/config/custom_api_response.dart';
import 'package:http/http.dart' as http;

class ApiService {
  bool isDummyData = true;

  Future<Map<String, dynamic>> fetchData(
      {required String queryTerm, String start = "0"}) async {
    try {
      if (!isDummyData) {
        String queryText = queryTerm.contains(' ')
            ? queryTerm.split(' ').join('%20')
            : queryTerm;
        final response = await http.get(
          Uri.parse(
              'https://www.googleapis.com/customsearch/v1?key=${search_api_key}&cx=${search_api_context_key}&q=$queryText&start=$start'),
        );
        if(response.statusCode==200){
          final jsonData = response.body;
          final resData= json.decode(jsonData);
          return resData;
        }
      }
    } catch (e) {
      print(e.toString());
    }
    return apiResponse;
  }
}
