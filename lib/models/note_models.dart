class Note {
  String title;
  String content;
  DateTime dateTime;

  Note({this.title, this.content, this.dateTime});
  
}

final Map<String, int> categories = {
  'Notes': 112,
  'Work': 58,
  'Home': 23,
  'Complete': 31,
};

final List<Note> notes = [
  Note(title: "Buy ticket", content: "Buy airplace tickets thru Kayak for \$318.83", dateTime: DateTime(2019, 10, 10, 8, 30)),
  Note(title: "Walk with cat", content: "Walk on the street with my favorite cats", dateTime: DateTime(2019, 10, 10, 8, 30)),
];