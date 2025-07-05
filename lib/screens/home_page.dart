import 'package:flutter/material.dart';
import 'package:shared_pref_demo/services/shared_pref.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController name = TextEditingController();
  final TextEditingController age = TextEditingController();
  final TextEditingController location = TextEditingController();

  String savedName = '';
  String savedAge = '';
  String savedLocation = '';

  void saveUserData() async {
    await SharedPrefService.save(name.text, age.text, location.text);
    clearInputFields();
  }

  void loadUserData() async {
    final userData = await SharedPrefService.load();
    setState(() {
      savedName = userData['name'] ?? '';
      savedAge = userData['age'] ?? '';
      savedLocation = userData['location'] ?? '';
    });
  }

  void clearUserData() async {
    await SharedPrefService.clear();
    setState(() {
      savedName = '';
      savedAge = '';
      savedLocation = '';
    });
  }

  void clearInputFields() {
    name.clear();
    age.clear();
    location.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Save Objects in SharedPreferences',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: name,
              decoration: const InputDecoration(
                labelText: 'Name',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
            TextField(
              controller: age,
              decoration: const InputDecoration(
                labelText: 'Age',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
            TextField(
              controller: location,
              decoration: const InputDecoration(
                labelText: 'Location',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
            const SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: saveUserData,
                  child: const Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: loadUserData,
                  child: const Text(
                    'Load',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: clearUserData,
                  child: const Text(
                    'Clear',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 35),
            Text('Name: $savedName'),
            const SizedBox(height: 30),
            Text('Age: $savedAge'),
            const SizedBox(height: 30),
            Text('Location: $savedLocation'),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
