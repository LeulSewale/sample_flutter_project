import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  TextEditingController _emailController = TextEditingController();
  FocusNode _emailFocusNode = FocusNode();
  bool _isEmailValid = false;

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_validateEmail);
  }

  void _validateEmail() {
    String email = _emailController.text.trim();
    bool isValid = email.isNotEmpty && email.contains('@') && email.contains('.');
    setState(() {
      _isEmailValid = isValid;
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _emailFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log in'),
      ),
      body: SingleChildScrollView( // Wrap the body with SingleChildScrollView to avoid scrolling
        child: Container(
          padding: EdgeInsets.all(20.0), // Add padding to the container
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: TextField(
                  controller: _emailController,
                  focusNode: _emailFocusNode,
                  decoration: InputDecoration(
                    hintText: 'E-mail',
                  ),
                ),
              ),

              SizedBox(height: 380.0), // Add some spacing
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector( // Use GestureDetector to make the text tappable
                    onTap: () {
                      // Add functionality for "Find Email" here
                    },
                    child: Text(
                      'Find Email',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 16.0,
                        color: Colors.blue, // You can change the text color
                      ),
                    ),
                  ),

                  SizedBox(width: 40.0), 

                  GestureDetector( // Use GestureDetector to make the text tappable
                    onTap: () {
                      // Add functionality for "Find Password" here
                    },
                    child: Text(
                      'Find Password',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 16.0,
                        color: Colors.blue, // You can change the text color
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
