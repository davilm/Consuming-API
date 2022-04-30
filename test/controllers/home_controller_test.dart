import 'package:flutter_application_1/controllers/home_controller.dart';
import 'package:flutter_application_1/services/json_placeholder_service.dart';
import 'package:flutter_application_1/models/todo_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class JsonPlaceHolderServiceMock extends Mock
    implements JsonPlaceHolderService {}

void main() {
  test('Being able to fill in the list correctly', () async {
    final service = JsonPlaceHolderServiceMock();
    when(() => service.getTodos()).thenAnswer((_) async => [TodoModel.stub()]);
    final controller = HomeController(service);
    await controller.fetchAllTodos();
    expect(controller.todos.length, 1);
  });
}
