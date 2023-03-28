import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthProvider with ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;
  void setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  bool _ObsicureText = false;
  bool get  ObsicureText =>  _ObsicureText;
  void  Visibility(bool value) {
     _ObsicureText = value;
    notifyListeners();
  }

  void login(String email, String password) async {
    setLoading(true);
    try {
      http.Response response = await http.post(
          Uri.parse("https://reqres.in/api/login"),
          body: {'email': email, 'password': password});
      if (response.statusCode == 200) {
        print("Sucessfull");
        setLoading(false);
      } else {
        print("Failed");
        setLoading(false);
      }
    } catch (e) {
      print(e.toString());
      setLoading(false);
    }
  }
}
