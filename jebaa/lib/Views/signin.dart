import 'package:flutter/material.dart';

class MySignIn extends StatefulWidget {
  const MySignIn({Key key}) : super(key: key);

  @override
  _MySignInState createState() => _MySignInState();
}

class _MySignInState extends State<MySignIn> {
  String _email, _password;
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final bool _isLoading = false;

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
                'JEBA',
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
                onPressed: () {
                  print(_email);
                  print(_password);
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
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
