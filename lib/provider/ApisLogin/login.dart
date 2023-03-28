import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider/ApisLogin/auth_provider.dart';

class LoginApi extends StatefulWidget {
  const LoginApi({super.key});

  @override
  State<LoginApi> createState() => _LoginApiState();
}

class _LoginApiState extends State<LoginApi> {
  final passwordcontroller = TextEditingController();
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final authprovider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(hintText: "Email"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: authprovider.ObsicureText,
              decoration: InputDecoration(
                hintText: "Password",
                suffixIcon: IconButton(
                  onPressed: () {
                    if (authprovider.ObsicureText == false) {
                      return authprovider.Visibility(true);
                    } else {
                      return authprovider.Visibility(false);
                    }
                  },
                  icon: authprovider.ObsicureText
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                authprovider.login(emailController.text.toString(),
                    passwordcontroller.text.toString());
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: authprovider.loading
                      ? CircularProgressIndicator()
                      : Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
