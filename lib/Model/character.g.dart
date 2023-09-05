// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterModel _$CharacterModelFromJson(Map<String, dynamic> json) =>
    CharacterModel(
      characterModelAbstract: json['characterModelAbstract'] as String,
      abstractSource: json['abstractSource'] as String,
      abstractText: json['abstractText'] as String,
      abstractUrl: json['abstractUrl'] as String,
      answer: json['answer'] as String,
      answerType: json['answerType'] as String,
      definition: json['definition'] as String,
      definitionSource: json['definitionSource'] as String,
      definitionUrl: json['definitionUrl'] as String,
      entity: json['entity'] as String,
      heading: json['heading'] as String,
      image: json['image'] as String,
      imageHeight: json['imageHeight'] as int,
      imageIsLogo: json['imageIsLogo'] as int,
      imageWidth: json['imageWidth'] as int,
      infobox: json['infobox'] as String,
      redirect: json['redirect'] as String,
      relatedTopics: (json['relatedTopics'] as List<dynamic>)
          .map((e) => RelatedTopic.fromJson(e as Map<String, dynamic>))
          .toList(),
      results: json['results'] as List<dynamic>,
      type: json['type'] as String,
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CharacterModelToJson(CharacterModel instance) =>
    <String, dynamic>{
      'characterModelAbstract': instance.characterModelAbstract,
      'abstractSource': instance.abstractSource,
      'abstractText': instance.abstractText,
      'abstractUrl': instance.abstractUrl,
      'answer': instance.answer,
      'answerType': instance.answerType,
      'definition': instance.definition,
      'definitionSource': instance.definitionSource,
      'definitionUrl': instance.definitionUrl,
      'entity': instance.entity,
      'heading': instance.heading,
      'image': instance.image,
      'imageHeight': instance.imageHeight,
      'imageIsLogo': instance.imageIsLogo,
      'imageWidth': instance.imageWidth,
      'infobox': instance.infobox,
      'redirect': instance.redirect,
      'relatedTopics': instance.relatedTopics.map((e) => e.toJson()).toList(),
      'results': instance.results,
      'type': instance.type,
      'meta': instance.meta.toJson(),
    };
