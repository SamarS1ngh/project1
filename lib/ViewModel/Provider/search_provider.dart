import 'package:flutter/material.dart';
import 'package:simpsonsviewer/Model/related_topic.dart';
import 'package:simpsonsviewer/ViewModel/Provider/home_provider.dart';

class SearchProvider extends ChangeNotifier {
  List<String> names = [];

  final CharacterListProvider characterListProvider;

  SearchProvider(this.characterListProvider);

  List<RelatedTopic>? get list => characterListProvider.list;

  List<String> getNames() {
    if (list != null) {
      for (int i = 0; i < list!.length; i++) {
        List<String> parts = list![i].text.split('-');
        if (parts.isNotEmpty) {
          names.add(parts[0].trim());
        }
      }
      notifyListeners();
    }
    return names;
  }
}
