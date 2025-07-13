
# 📦 Shared Preferences – Object Storage (Flutter App)

A clean and simple **Flutter** project to store and retrieve multiple fields (Name, Age, Location) using `SharedPreferences`.  
This app helps you understand how to manage local storage for multiple values like an object.

---

## 🌟 Features:

- 📝 Input fields for:
  - Name
  - Age
  - Location
- 💾 Save all fields to local storage
- 📥 Load data anytime
- ❌ Clear all saved data
- 🔄 Clean separation using a helper class `SharedPrefService`

---

## 🧠 Concepts Used:

- **Stateful Widgets**
- **SharedPreferences**
- **Custom Service Class**
- **TextEditingController**
- **setState + async/await**
- **Separation of Concerns (Clean Code)**

---

## 📁 File Structure:

```

lib/
├── main.dart                       # Entry point
├── screens/
│   └── home\_page.dart             # UI and logic
└── services/
└── shared\_pref.dart           # SharedPrefs logic (save, load, clear)

````

---

## 🔧 How to Use:

1. Clone the repo:
   ```bash
   git clone https://github.com/SalahHassan202/shared_pref_demo.git
````

2. Install packages:

   ```bash
   flutter pub get
   ```

3. Run the app:

   ```bash
   flutter run
   ```

---

## 📦 Dependencies:

Make sure `shared_preferences` is added in your `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  shared_preferences: ^2.2.2
```

---

## 📌 Example Use Case:

✅ Suitable for:

* Saving small user preferences
* Storing session or profile data
* Practicing clean architecture using services

---

## ✍️ Created By:

**Salah Hassan** – Flutter Developer 🚀

---

## 🤝 Contributions:

Fork the repo, suggest ideas, or open a PR.

```
