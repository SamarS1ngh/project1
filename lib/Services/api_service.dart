import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:simpsonsviewer/Model/character.dart';
import 'package:simpsonsviewer/Model/related_topic.dart';

class ApiService {
  final dio = Dio();

  Future<List<RelatedTopic>> fetchAPI(String url) async {
    final Response response = await dio.get(url);

    log('calling api');
    if (response.data != null) {
      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = json.decode(response.data);
        // log(jsonData.toString());
        final characterModel = CharacterModel.fromJson(jsonData);
        log(characterModel.toString());
        return characterModel.relatedTopics;
      } else {
        log('call failed with status code ${response.statusCode}');
        return [];
      }
    } else {
      log('call failed with status code ${response.statusCode}');
      return [];
    }
  }
}
