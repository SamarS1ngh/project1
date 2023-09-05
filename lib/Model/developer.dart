import 'package:json_annotation/json_annotation.dart';
part 'developer.g.dart';

@JsonSerializable(explicitToJson: true)
class Developer {
  String name;
  String type;
  String url;

  Developer({
    required this.name,
    required this.type,
    required this.url,
  });

  factory Developer.fromJson(Map<String, dynamic> json) =>
      _$DeveloperFromJson(json);

  Map<String, dynamic> toJson() => _$DeveloperToJson(this);
}
