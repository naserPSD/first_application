import 'package:http/http.dart' as http; //ignore_for_file: file_names
import 'dart:async';
import 'dart:convert'; // Added import for dart:convert

class AuthService {
  final String apiUrl = 'http://10.100.17.22:880/hrms/public/api/login';

  Future<String> authenticate(String eid, String password) async {
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'eid': eid,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final String token = data['access_token']; // Extract the access_token
      return token;
    } else {
      throw Exception('Password or Employee Id is Invalid');
    }
  }
}
