import 'dart:async';

void main() async {
  var database = DatabaseSimulator();

  try {
    List<String> userList = await database.fetchData();

    print('Data loaded successfully: $userList');
  } catch (error) {
    print('Error during data loading: $error');
  }
}

class DatabaseSimulator {
  Future<List<String>> fetchData() async {
    await Future.delayed(Duration(seconds: 2));

    List<String> users = ['Alice', 'Bob', 'Charlie', 'David', 'Eva'];

    return users;
  }
}
