import "package:login_screen/source/mixins/validator.dart";
import "dart:async";
import "package:rxdart/rxdart.dart";

class Bloc extends Object with Validator {
  final _email = StreamController<String>.broadcast();
  final _password = StreamController<String>.broadcast();

  // Add data to stream
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);
  Stream<bool> get submitValidator => Rx.combineLatest2(email, password, (e, p) => true);

  // change data
  Function(String) get updateEmail => _email.sink.add;
  Function(String) get updatePassword => _password.sink.add;

  dispose() {
    _email.close();
    _password.close();
  }
}
