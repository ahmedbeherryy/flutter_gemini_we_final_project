import 'package:flutter_gemini_we_final_project/constants.dart';
import 'package:flutter_gemini_we_final_project/hive/settings.dart';
import 'package:flutter_gemini_we_final_project/hive/user_model.dart';
import 'package:hive/hive.dart';
import 'chat_history.dart';

class Boxes {
  // get the caht history box
  static Box<ChatHistory> getChatHistory() =>
      Hive.box<ChatHistory>(Constants.chatHistoryBox);

  // get user box
  static Box<UserModel> getUser() => Hive.box<UserModel>(Constants.userBox);

  // get settings box
  static Box<Settings> getSettings() => Hive.box<Settings>(Constants.settingsBox);
}
