// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'srcOptions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SrcOptions _$SrcOptionsFromJson(Map<String, dynamic> json) => SrcOptions(
      directory: json['directory'] as String,
      isFanon: json['is_fanon'] as int,
      isMediawiki: json['is_mediawiki'] as int,
      isWikipedia: json['is_wikipedia'] as int,
      language: json['language'] as String,
      minAbstractLength: json['min_abstract_length'] as String,
      skipAbstract: json['skip_abstract'] as int,
      skipAbstractParen: json['skip_abstract_paren'] as int,
      skipEnd: json['skip_end'] as String,
      skipIcon: json['skip_icon'] as int,
      skipImageName: json['skip_image_name'] as int,
      skipQr: json['skip_qr'] as String,
      sourceSkip: json['source_skip'] as String,
      srcInfo: json['src_info'] as String,
    );

Map<String, dynamic> _$SrcOptionsToJson(SrcOptions instance) =>
    <String, dynamic>{
      'directory': instance.directory,
      'is_fanon': instance.isFanon,
      'is_mediawiki': instance.isMediawiki,
      'is_wikipedia': instance.isWikipedia,
      'language': instance.language,
      'min_abstract_length': instance.minAbstractLength,
      'skip_abstract': instance.skipAbstract,
      'skip_abstract_paren': instance.skipAbstractParen,
      'skip_end': instance.skipEnd,
      'skip_icon': instance.skipIcon,
      'skip_image_name': instance.skipImageName,
      'skip_qr': instance.skipQr,
      'source_skip': instance.sourceSkip,
      'src_info': instance.srcInfo,
    };
