import 'dart:async';

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