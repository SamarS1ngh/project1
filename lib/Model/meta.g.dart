// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      attribution: json['attribution'],
      blockgroup: json['blockgroup'],
      createdDate: json['created_date'],
      description: json['description'] as String,
      designer: json['designer'],
      devDate: json['dev_date'],
      devMilestone: json['dev_milestone'] as String,
      developer: (json['developer'] as List<dynamic>)
          .map((e) => Developer.fromJson(e as Map<String, dynamic>))
          .toList(),
      exampleQuery: json['example_query'] as String,
      id: json['id'] as String,
      isStackexchange: json['is_stackexchange'],
      jsCallbackName: json['js_callback_name'] as String,
      liveDate: json['live_date'],
      maintainer:
          Maintainer.fromJson(json['maintainer'] as Map<String, dynamic>),
      name: json['name'] as String,
      perlModule: json['perl_module'] as String,
      producer: json['producer'],
      productionState: json['production_state'] as String,
      repo: json['repo'] as String,
      signalFrom: json['signal_from'] as String,
      srcDomain: json['src_domain'] as String,
      srcId: json['src_id'] as int,
      srcName: json['src_name'] as String,
      srcOptions:
          SrcOptions.fromJson(json['src_options'] as Map<String, dynamic>),
      srcUrl: json['src_url'],
      status: json['status'] as String,
      tab: json['tab'] as String,
      topic: (json['topic'] as List<dynamic>).map((e) => e as String).toList(),
      unsafe: json['unsafe'] as int,
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'attribution': instance.attribution,
      'blockgroup': instance.blockgroup,
      'created_date': instance.createdDate,
      'description': instance.description,
      'designer': instance.designer,
      'dev_date': instance.devDate,
      'dev_milestone': instance.devMilestone,
      'developer': instance.developer.map((e) => e.toJson()).toList(),
      'example_query': instance.exampleQuery,
      'id': instance.id,
      'is_stackexchange': instance.isStackexchange,
      'js_callback_name': instance.jsCallbackName,
      'live_date': instance.liveDate,
      'maintainer': instance.maintainer.toJson(),
      'name': instance.name,
      'perl_module': instance.perlModule,
      'producer': instance.producer,
      'production_state': instance.productionState,
      'repo': instance.repo,
      'signal_from': instance.signalFrom,
      'src_domain': instance.srcDomain,
      'src_id': instance.srcId,
      'src_name': instance.srcName,
      'src_options': instance.srcOptions.toJson(),
      'src_url': instance.srcUrl,
      'status': instance.status,
      'tab': instance.tab,
      'topic': instance.topic,
      'unsafe': instance.unsafe,
    };
