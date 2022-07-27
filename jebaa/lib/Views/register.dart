import 'package:flutter/material.dart';
import 'package:jebaa/Views/mainpage.dart';
import 'package:jebaa/Views/signin.dart';

import '../Database/auth.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
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
                'Register',
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
                    setState(() {
                      _email = value;
                    });
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
                    setState(() {
                      _password = value;
                    });
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
                child: const Text('Register'),
                onPressed: () async {
                  RegExp regExp = RegExp('.*@.*');
                  if (regExp.hasMatch(_email) && (_password.length > 6)) {
                    await _auth.registerWithEmailAndPassword(_email, _password);
                    //good
                    showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                              title: const Text('Thank you'),
                              content: const Text('Your have registered'),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      Navigator.pushReplacement(
                                          context, MaterialPageRoute(builder: (context) => const MainView()));
                                    },
                                    child: const Text('Ok'))
                              ],
                            ));
                  } else {}
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInView(
                              // trip: widget.trip,
                              )));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
