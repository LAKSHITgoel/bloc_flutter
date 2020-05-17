import "dart:async";
import "../mixins/validator.dart";

class Bloc extends Object with Validator {
  final _email = StreamController<String>();
  final _password = StreamController<String>();

  // Add data to stream
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);

  // change data
  Function(String) get updateEmail => _email.sink.add;
  Function(String) get updatePassword => _password.sink.add;

  dispose() {
    _email.close();
    _password.close();
  }
}

final bloc = Bloc();