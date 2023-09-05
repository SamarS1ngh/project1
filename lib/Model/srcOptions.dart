import 'package:json_annotation/json_annotation.dart';
part 'srcOptions.g.dart';

@JsonSerializable(explicitToJson: true)
class SrcOptions {
  String directory;
  int isFanon;
  int isMediawiki;
  int isWikipedia;
  String language;
  String minAbstractLength;
  int skipAbstract;
  int skipAbstractParen;
  String skipEnd;
  int skipIcon;
  int skipImageName;
  String skipQr;
  String sourceSkip;
  String srcInfo;

  SrcOptions({
    required this.directory,
    required this.isFanon,
    required this.isMediawiki,
    required this.isWikipedia,
    required this.language,
    required this.minAbstractLength,
    required this.skipAbstract,
    required this.skipAbstractParen,
    required this.skipEnd,
    required this.skipIcon,
    required this.skipImageName,
    required this.skipQr,
    required this.sourceSkip,
    required this.srcInfo,
  });

  factory SrcOptions.fromJson(Map<String, dynamic> json) =>
      _$SrcOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$SrcOptionsToJson(this);
}
