import 'package:simpsonsviewer/Model/srcOptions.dart';
import 'package:json_annotation/json_annotation.dart';

import 'developer.dart';
import 'maintainer.dart';
part 'meta.g.dart';

@JsonSerializable(explicitToJson: true)
class Meta {
  dynamic attribution;
  dynamic blockgroup;
  dynamic createdDate;
  String description;
  dynamic designer;
  dynamic devDate;
  String devMilestone;
  List<Developer> developer;
  String exampleQuery;
  String id;
  dynamic isStackexchange;
  String jsCallbackName;
  dynamic liveDate;
  Maintainer maintainer;
  String name;
  String perlModule;
  dynamic producer;
  String productionState;
  String repo;
  String signalFrom;
  String srcDomain;
  int srcId;
  String srcName;
  SrcOptions srcOptions;
  dynamic srcUrl;
  String status;
  String tab;
  List<String> topic;
  int unsafe;

  Meta({
    required this.attribution,
    required this.blockgroup,
    required this.createdDate,
    required this.description,
    required this.designer,
    required this.devDate,
    required this.devMilestone,
    required this.developer,
    required this.exampleQuery,
    required this.id,
    required this.isStackexchange,
    required this.jsCallbackName,
    required this.liveDate,
    required this.maintainer,
    required this.name,
    required this.perlModule,
    required this.producer,
    required this.productionState,
    required this.repo,
    required this.signalFrom,
    required this.srcDomain,
    required this.srcId,
    required this.srcName,
    required this.srcOptions,
    required this.srcUrl,
    required this.status,
    required this.tab,
    required this.topic,
    required this.unsafe,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}
