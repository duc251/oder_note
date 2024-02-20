

import 'package:oder_note/core/globals/definition.dart';
import 'package:oder_note/core/globals/preferences.dart';
import 'package:oder_note/core/models/app/setting.model.dart';

class AppPreferences {
  AppPreferences._internal();
  static final _instance = AppPreferences._internal();
  factory AppPreferences()=> _instance;

  Future <Setting?> getSetting()async{
    try{
      final value = await Preferences.getString(Definition.settingKey);
      return value != null ? Setting.fromString(value):null;

    }on Exception{
      return null;
    }
  }
  Future<bool> setSetting(Setting setting)async{
    return await Preferences.setString(
      Definition.settingKey, setting.toString());
  }
}