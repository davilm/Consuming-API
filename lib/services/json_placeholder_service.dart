import 'package:flutter_application_1/models/todo_model.dart';
import 'package:flutter_application_1/services/http_client_interface.dart';

const url = 'https://jsonplaceholder.typicode.com/todos';

class JsonPlaceHolderService {
  final IHttpClient client;

  JsonPlaceHolderService(this.client);

  Future<List<TodoModel>> getTodos() async {
    final body = await client.get(url);
    return (body as List).map(TodoModel.fromJson).toList();
  }
}
