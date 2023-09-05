import 'package:json_annotation/json_annotation.dart';

import 'icon.dart';
part 'related_topic.g.dart';

@JsonSerializable(explicitToJson: true)
class RelatedTopic {
  String firstUrl;
  Icon icon;
  String result;
  String text;

  RelatedTopic({
    required this.firstUrl,
    required this.icon,
    required this.result,
    required this.text,
  });

  factory RelatedTopic.fromJson(Map<String, dynamic> json) =>
      _$RelatedTopicFromJson(json);

  Map<String, dynamic> toJson() => _$RelatedTopicToJson(this);
}
