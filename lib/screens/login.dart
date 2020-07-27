import 'package:flutter/material.dart';
import 'package:hospitals/components/textfield.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailTextEditingController =
      TextEditingController();
  final TextEditingController passTextEditingController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xff354052),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 350,
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  TextFieldComponent(
                    textEditingController: emailTextEditingController,
                    title: 'Username :',
                  ),
                  TextFieldComponent(
                    textEditingController: passTextEditingController,
                    title: 'Password :',
                  ),
                  FlatButton(
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                    color: Theme.of(context).primaryColor,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
