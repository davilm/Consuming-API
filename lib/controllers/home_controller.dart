import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/services/json_placeholder_service.dart';
import 'package:flutter_application_1/models/todo_model.dart';
import 'package:flutter_application_1/services/dio_client.dart';

class HomeController extends ChangeNotifier {
  final JsonPlaceHolderService _service;

  HomeController(this._service);

  var todos = <TodoModel>[];

  Future<void> fetchAllTodos() async {
    todos = await _service.getTodos();
    notifyListeners();
  }
}
