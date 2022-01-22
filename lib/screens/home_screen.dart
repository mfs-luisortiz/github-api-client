import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Github API Client'),
      ),
      body: Center(
        child: Text('Listado de repostorios'),
      ),
    );
  }
}
