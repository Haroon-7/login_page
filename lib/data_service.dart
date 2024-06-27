import 'package:http/http.dart' as http;
import 'dart:convert';

class DataService {
  final String apiUrl = 'https://jsonplaceholder.cypress.io/posts';

  Future<List<dynamic>> fetchData() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
