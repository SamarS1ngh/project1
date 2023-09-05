import 'package:simpsonsviewer/Model/related_topic.dart';
import 'package:json_annotation/json_annotation.dart';

import 'meta.dart';
part 'character.g.dart';

@JsonSerializable(explicitToJson: true)
class CharacterModel {
  String characterModelAbstract;
  String abstractSource;
  String abstractText;
  String abstractUrl;
  String answer;
  String answerType;
  String definition;
  String definitionSource;
  String definitionUrl;
  String entity;
  String heading;
  String image;
  int imageHeight;
  int imageIsLogo;
  int imageWidth;
  String infobox;
  String redirect;
  List<RelatedTopic> relatedTopics;
  List<dynamic> results;
  String type;
  Meta meta;

  CharacterModel({
    required this.characterModelAbstract,
    required this.abstractSource,
    required this.abstractText,
    required this.abstractUrl,
    required this.answer,
    required this.answerType,
    required this.definition,
    required this.definitionSource,
    required this.definitionUrl,
    required this.entity,
    required this.heading,
    required this.image,
    required this.imageHeight,
    required this.imageIsLogo,
    required this.imageWidth,
    required this.infobox,
    required this.redirect,
    required this.relatedTopics,
    required this.results,
    required this.type,
    required this.meta,
  });

  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterModelToJson(this);
}
