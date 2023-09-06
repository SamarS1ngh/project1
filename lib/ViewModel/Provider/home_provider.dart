import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:simpsonsviewer/Model/related_topic.dart';
import 'package:simpsonsviewer/Services/api_service.dart';
import 'package:simpsonsviewer/Utils/constants.dart';

class CharacterListProvider extends ChangeNotifier {
  final ApiService apiService = ApiService();
  List<RelatedTopic>? list;

  String url = '';
  Future<List<RelatedTopic>> _fetchSimpsons(String query, String format) async {
    url = "$baseUrl/?q=$query&format=$format";
    log('Api calling, feeding list');
    return await apiService.fetchAPI(url);
  }

  Future<void> simpsonsData() async {
    list = await _fetchSimpsons('simpsons+characters', 'json');
    log('api called, list feeded');
    notifyListeners();
  }
}
