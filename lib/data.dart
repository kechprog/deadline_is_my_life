class AppData {
  static String login='', password='';
  static final AppData _singleton = AppData._internal();
  static List<DataEntry> data = [];

  factory AppData({String? login, String? password}) {
    // first time
    if (login != null && password != null) {
      login = login;
      password = password;
      data = [
        DataEntry(
          id: 0,
          name: "taskName", 
          description: "taskDescription", 
          due: DateTime.parse("2022-10-21 22:04"),
          checkpointNames: ["checkpoint1", "checkpoint2", "checkpoint3"],
          checkpointDescriptions: ["CheckPoint1 description", "CheckPoint2 description", "CheckPoint3 description"],
        ),
        DataEntry(
          id: 1,
          name: "taskName2", 
          description: "taskDescription2", 
          due: DateTime.parse("2022-10-21 22:04"),
          checkpointNames: ["checkpoint1", "checkpoint2", "checkpoint3"],
          checkpointDescriptions: ["CheckPoint1 description", "CheckPoint2 description", "CheckPoint3 description"],
        ),
        DataEntry(
          id: 2,
          name: "taskName3", 
          description: "taskDescription3", 
          due: DateTime.parse("2022-10-21 22:04"),
          checkpointNames: ["checkpoint1", "checkpoint2", "checkpoint3"],
          checkpointDescriptions: ["CheckPoint1 description", "CheckPoint2 description", "CheckPoint3 description"],
        ),
      ];
      return _singleton;
    } else { // get the singleton
      assert(login != '' && password != '');
      return _singleton;
    }
  }

  AppData._internal();

  List<DataEntry> getData(){
    return data;
  }

  void setDesc(int id, int idx, String str) {
    data[id].checkpointDescriptions[idx] = str;
  }

  void setName(int id, int idx, String str) {
    data[id].checkpointNames[idx] = str;
  }

}

class DataEntry {
  String name, description;
  int id;
  List<String> checkpointNames, checkpointDescriptions;
  DateTime due;
  DataEntry({
    required this.name, 
    required this.description, 
    required this.due, 
    required this.id, 
    required this.checkpointNames, 
    required this.checkpointDescriptions
  });
}