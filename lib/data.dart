class TaskData {
  List<DataEntry> data = [];

  TaskData(){
    data = [
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
    ];
  }

  List<DataEntry> getData(){
    return data;
  }
  
}

class DataEntry {
  String name, description;
  DateTime due;
  DataEntry({required this.name, required this.description, required this.due});
}