import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  static Future<void> save(String name, String age, String location) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', name);
    await prefs.setString('age', age);
    await prefs.setString('location', location);
  }
  
  static Future<Map<String, String>> load() async {
    final prefs = await SharedPreferences.getInstance();
    return {
      'name': prefs.getString('name') ?? '',
      'age': prefs.getString('age') ?? '',
      'location': prefs.getString('location') ?? '',
    };
  }


  static Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('name');
    await prefs.remove('age');
    await prefs.remove('location');
  }
}
