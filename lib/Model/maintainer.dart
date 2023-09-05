import 'package:json_annotation/json_annotation.dart';
part 'maintainer.g.dart';

@JsonSerializable(explicitToJson: true)
class Maintainer {
  String github;

  Maintainer({
    required this.github,
  });

  factory Maintainer.fromJson(Map<String, dynamic> json) =>
      _$MaintainerFromJson(json);

  Map<String, dynamic> toJson() => _$MaintainerToJson(this);
}
