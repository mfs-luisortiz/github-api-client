import 'dart:async';

import 'package:http/http.dart';

class GithubApiClientService {
  final String urlApi = 'https://api.github.com';
  Future<void> getRepositories(String user) async {
    Response response = await get('$urlApi/users/$user/repos');
    if (response.statusCode == 200) {
      print(response.body);
    }
  }
}

class RepoListController<List> {
  StreamController<List> controller;
  List currentState;
  RepoListController() {
    controller = StreamController<List>.broadcast(
      onListen: () {
        controller.sink.add(currentState);
      },
    );
  }

  Stream<List> get stream => controller.stream;

  void dispose() {
    controller.close();
  }
}