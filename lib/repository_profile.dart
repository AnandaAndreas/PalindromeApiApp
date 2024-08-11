import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:kampusmerdeka/models/profile_model.dart';

class RepositoryProfile {
  final _baseUrl = 'https://reqres.in/api/users?page=1&per_page=10';

  Future<List<ProfileModel>> getData() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        Iterable it = jsonDecode(response.body)['data'];
        List<ProfileModel> profileModel = it.map((e) => ProfileModel.fromJson(e)).toList();
        return profileModel;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      print("Error: ${e.toString()}");
      return [];
    }
  }
}
