import 'package:flutter/material.dart';

class GroupsListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _groupList(),
    );
  }

  Widget _groupList() {
    return ListView.builder(
      itemCount: 17,
      itemBuilder: (BuildContext ctx, int index) {
        return _card(ctx);
      },
    );
  }
}

Widget _card(BuildContext ctx) {
  return GestureDetector(
    onTap: () => Navigator.pushNamed(ctx, "/groups/id"),
    child: Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.5),
      child: Container(
        // decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
        child: _listTile(),
        color: Color.fromRGBO(64, 75, 96, .9),
      ),
    ),
  );
}

Widget _listTile() {
  return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: new BoxDecoration(
            border: new Border(
                right: new BorderSide(width: 1.0, color: Colors.white24))),
        child: Icon(Icons.autorenew, color: Colors.white),
      ),
      title: Text(
        "Introduction to Driving",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

      subtitle: Row(
        children: <Widget>[
          Icon(Icons.linear_scale, color: Colors.yellowAccent),
          Text(" Intermediate", style: TextStyle(color: Colors.white))
        ],
      ),
      trailing:
          Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0));
}
