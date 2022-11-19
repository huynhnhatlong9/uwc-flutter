import 'package:flutter/material.dart';
import 'package:myapp/src/modules/home/page/HomePage.dart';
import 'package:myapp/src/styles/text_styles.dart';
import 'dart:developer' as developer;

import 'package:myapp/src/utils/logger.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color pColor = Theme.of(context).primaryColor;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/login_decor.jpg'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text('Login', style: TextStyles.h1)),
            ),
            const SizedBox(height: 20),
            Column(
              children: const [
                LoginTextField("User Name", Icons.verified_user),
                LoginPasswordField("Password", Icons.lock)
              ],
            ),
            Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: GestureDetector(
                  onTap: () {
                    Logger.log("msg");
                  },
                  child: Text('Forgot password?',
                      style: TextStyle(
                          color: pColor, fontWeight: FontWeight.bold))),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  color: pColor,
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
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

class LoginTextField extends StatelessWidget {
  final String hintText;
  final IconData iconData;
  final ValueChanged<String>? onChanged;

  const LoginTextField(this.hintText, this.iconData, {Key? key, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(icon: Icon(iconData), hintText: hintText),
      onChanged: onChanged,
    );
  }
}

class LoginPasswordField extends StatefulWidget {
  final String hintText;
  final IconData iconData;
  final ValueChanged<String>? onChanged;

  const LoginPasswordField(this.hintText, this.iconData,
      {Key? key, this.onChanged})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoginPasswordFieldState();
  }
}

class _LoginPasswordFieldState extends State<LoginPasswordField> {
  bool isHidden = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          icon: Icon(widget.iconData),
          hintText: widget.hintText,
          suffixIcon: GestureDetector(
            child: Icon(isHidden ? Icons.visibility_off : Icons.visibility),
            onTap: () {
              setState(() {
                isHidden = !isHidden;
              });
            },
          )),
      onChanged: widget.onChanged,
    );
  }
}
