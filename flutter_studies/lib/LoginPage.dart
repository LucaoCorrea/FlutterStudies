import 'package:flutter/material.dart';
import 'package:flutter_studies/HomePage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return Column(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.network(
                        'https://cdn.dribbble.com/userupload/11764588/file/original-4165ef475e94ba4104940d4cdab8f760.png?resize=400x300&vertical=center'),
                  ),
                  Container(height: 20),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 12, right: 12, top: 20, bottom: 12),
                      child: Column(
                        children: [
                          TextField(
                            onChanged: (text) {
                              email = text;
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                labelText: 'Email',
                                border: OutlineInputBorder()),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            onChanged: (text) {
                              password = text;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: 'Password',
                                border: OutlineInputBorder()),
                          ),
                          SizedBox(height: 15),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(235, 0, 0, 0),
                                foregroundColor: Colors.white,
                                textStyle: TextStyle(
                                  fontSize: 20,
                                  
                                ),
                              ),
                              onPressed: () {
                                if (email == 'test@gmail.com' &&
                                    password == 'test') {
                                  Navigator.of(context)
                                      .pushReplacementNamed('/home');
                                } else {
                                  print('errou');
                                }
                              },
                              child: Text('Entrar'))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Container(color: Color.fromARGB(255, 255, 245, 227)),
        ),
        _body(),
      ],
    ));
  }
}
// 