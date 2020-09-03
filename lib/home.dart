import 'package:flutter/material.dart';

import 'components/list_item.dart';
import 'models/team.dart';
import 'services/api.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var isLoading = true;
  var teams = List<Team>();

  @override
  void initState() {
    _fetchTeam();
    super.initState();
  }

  void _fetchTeam() async {
    setState(() {
      isLoading = true;
    });

    // Get teams data from api
    var tempTeams = await Api().getTeams();

    setState(() {
      teams = tempTeams;
      isLoading = false;
    });
  }

  Widget _getItem(String badge, String title, Color borderColor) {
    return ListItem(badge, title, borderColor);
  }

  List<Widget> _getListItem() {
    var items = List<Widget>();
    for (var i = 0; i < teams.length; i++) {
      items.add(_getItem(teams[i].teamBadge, teams[i].teamName, Colors.teal));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: isLoading
            ? CircularProgressIndicator()
            : Container(
                color: Color(0xFFF8FCFF),
                child: ListView(
                  padding: EdgeInsets.all(10),
                  children: _getListItem(),
                ),
              ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: _fetchTeam,
      ),
    );
  }
}
