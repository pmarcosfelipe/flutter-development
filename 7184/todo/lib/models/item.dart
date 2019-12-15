class Item {
  String title;
  bool done;

  Item({this.title, this.done});

  Item.fromJSON(Map<String, dynamic> json) {
    title = json['title'];
    done = json['done'];
  }

  Map<String, dynamic> toJSON() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['done'] = this.done;
    return data;
  }
}
