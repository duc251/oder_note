import 'dart:convert';


import 'package:json_annotation/json_annotation.dart';
import 'package:oder_note/core/globals/config.dart';
import 'package:oder_note/core/models/commons/base.mode.dart';

part 'setting.model.g.dart';

@JsonSerializable(explicitToJson: true)

class Setting implements Base{
  String region;
  String language;
  String timeZone;
  bool firstUse;
    Setting(this.region, this.language, this.timeZone, this.firstUse);
 factory Setting.def() => Setting(Config.defaultRegion, Config.defaultLanguage,
      Config.defaultTimeZone, true);

  factory Setting.fromJson(Map<String, dynamic> json) =>
      _$SettingFromJson(json);

  factory Setting.fromString(String string) =>
      _$SettingFromJson(jsonDecode(string));

  static Setting fromJsonString(String string) =>
      _$SettingFromJson(jsonDecode(string));

  static String toJsonString(Setting setting) =>
      jsonEncode(_$SettingToJson(setting));

  Setting copyWith(
      {String? region, String? language, String? timeZone, bool? firstUse}) {
    return Setting(region ?? this.region, language ?? this.language,
        timeZone ?? this.timeZone, firstUse ?? this.firstUse);
  }

  @override
  Map<String, dynamic> toJson() => _$SettingToJson(this);

  @override
  String toString() => jsonEncode(_$SettingToJson(this));

  @override
  String wrapString() => '{"setting":${jsonEncode(_$SettingToJson(this))}}';

  @override
  Setting clone() => _$SettingFromJson(_$SettingToJson(this));
}