import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class NetworkUtils {

  static final Uri alEndpoint = Uri.https("graphql.anilist.co", "");

  static Future<String> _loadGraphQL(String filename) async {
    File queryFile = new File("res/queries/" + filename + ".graphql");
    if (!await queryFile.exists()) {
      throw FileSystemException("Query file " + filename + " wasn't found!");
    }
    return await queryFile.readAsString();
  }

  static Future<Map<String, dynamic>> makeALRequest(String reqName) async {
    String query = await _loadGraphQL(reqName);
    http.Response response = await http.post(alEndpoint, body: query);
    return jsonDecode(response.body);
  }

}