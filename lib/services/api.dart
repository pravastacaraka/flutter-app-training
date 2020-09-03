import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter_app_training/models/team.dart';

class Api {
  var urlApi =
      'https://www.thesportsdb.com/api/v1/json/1/search_all_teams.php?l=English%20Premier%20League';

  Future<List<Team>> getTeams() async {
    var response = await http.get(urlApi);

    if (response.statusCode == HttpStatus.ok) {
      var jsonResponse = json.decode(response.body);
      if (jsonResponse == null || jsonResponse["teams"] == null) {
        return null;
      }

      var rawTeam = jsonResponse["teams"];
      var teams = rawTeam.map<Team>((team) => Team.fromJson(team)).toList();

      return teams;
    } else {
      return null;
    }
  }
}
