class AppData {
  static String login='', password='';
  static final AppData _singleton = AppData._internal();

  factory AppData({String? login, String? password}) {
    // first time
    if (login != null && password != null) {
      login = login;
      password = password;
      return _singleton;
    } else { // get the singleton
      assert(login != '' && password != '');
      return _singleton;
    }
  }

  AppData._internal();

  List<DataEntry> getData(){
    return [
      DataEntry(
        name: "taskName", 
        description: "taskDescription", 
        due: DateTime.parse("2022-10-21 22:04")
      ),
      DataEntry(
        name: "taskName", 
        description: "taskDescription", 
        due: DateTime.parse("2022-10-21 22:04")
      ),
      DataEntry(
        name: "taskName", 
        description: "taskDescription", 
        due: DateTime.parse("2022-10-21 22:04")
      ),
      DataEntry(
        name: "taskName", 
        description: "taskDescription", 
        due: DateTime.parse("2022-10-21 22:04")
      ),
      DataEntry(
        name: "taskName", 
        description: "new Description", 
        due: DateTime.parse("2022-10-21 22:04")
      ),
      DataEntry(
        name: "taskName", 
        description: "taskDescription", 
        due: DateTime.parse("2022-10-20 22:04")
      ),
      DataEntry(
        name: "taskName", 
        description: "taskDescription", 
        due: DateTime.parse("2022-10-20 22:04")
      ),
      DataEntry(
        name: "taskName", 
        description: "taskDescription", 
        due: DateTime.parse("2022-10-21 22:04")
      ),
    ];;
  }
}

class DataEntry {
  String name, description;
  DateTime due;
  DataEntry({required this.name, required this.description, required this.due});
}