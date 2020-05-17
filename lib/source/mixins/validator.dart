import "dart:async";

class Validator {
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      print(email);
      if (email.contains("@")) sink.add(email);
      else sink.addError("Enter a valid email address"); 
    }
  );
  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) {
      print(password);
      if (password.length >= 4 ) sink.add(password);
      else sink.addError("Password must be atleast 4 characters long"); 
    }
  );
}