import 'package:shared_preferences/shared_preferences.dart';
import 'package:xiaoma/app/app.dart';

Future<SharedPreferences> preferences = SharedPreferences.getInstance();

class SharedPreferencesRepo {
  SharedPreferencesRepo({
    required this.prefs,
  });
  final SharedPreferences prefs;

  Future<bool> clearPreferences() async {
    final response = await prefs.clear();
    return response;
  }

  Future<bool> setOnboardedStatus({required bool value}) async {
    final response = await prefs.setBool(AppConstants.userData, value);
    return response;
  }
}
