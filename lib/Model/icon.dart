import 'package:json_annotation/json_annotation.dart';
part 'icon.g.dart';

@JsonSerializable()
class Icon {
  String height;
  String url;
  String width;

  Icon({
    required this.height,
    required this.url,
    required this.width,
  });

  factory Icon.fromJson(Map<String, dynamic> json) => _$IconFromJson(json);

  Map<String, dynamic> toJson() => _$IconToJson(this);
}
