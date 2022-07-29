import 'package:flutter/material.dart';
import 'package:jebaa/Views/register.dart';

import '../Database/auth.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key key}) : super(key: key);

  @override
  _SignInViewState createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final _auth = AuthService();
  String _email = '', _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(75),
          child: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.blue[900],
                    Colors.blue[800],
                    Colors.blue[400],
                  ],
                ),
              ),
            ),
            title: const Center(
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: const EdgeInsets.all(10),
                width: double.infinity,
                height: 50,
                child: TextField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                  onChanged: (value) {
                    _email = value;
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: const EdgeInsets.all(10),
                width: double.infinity,
                height: 50,
                child: TextField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                  onChanged: (value) {
                    _password = value;
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue[900],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue[900],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 50,
              child: ElevatedButton(
                child: const Text('Sign In'),
                onPressed: () async {
                  RegExp regExp = RegExp('.*@.*');
                  if (_email.isNotEmpty && _password.isNotEmpty) {
                    if (regExp.hasMatch(_email) && (_password.length > 6)) {
                      dynamic result = await _auth.signInWithEmailAndPassword(_email, _password);
                      if (result == null) {
                        print('Null');
                        setState(() {});
                      } else {
                        //good
                      }
                    } else {}
                  } else {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: const Text('Complete all fields'),
                              content: const Text('Please fill all the fields'),
                              actions: [
                                TextButton(
                                  child: const Text('Ok'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            ));
                  }
                },
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[600]),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: const Text('New user? Sign up'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterView()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
