// scrooller = eklendi
// listeler olacak = eklendi
// listeler içinde checkbox olacak
// checboxlar sayfalara yönlendirilecek

import 'package:flutter/material.dart';

import 'education_page.dart';

bool _ischecked = false;

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior:
          const MaterialScrollBehavior().copyWith(scrollbars: false),
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        backgroundColor: Color(0xFF132030),
        appBar: AppBar(
          title: const Text('Dart Gamification'),
          backgroundColor: Color(0xFF121A26),
          titleTextStyle: TextStyle(color: Colors.amber[800], fontSize: 30.0),
        ),
        body: RawScrollbar(
          thumbVisibility: true,
          thumbColor: Color.fromARGB(153, 255, 145, 0),
          thickness: 10,
          radius: Radius.circular(10),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ExpansionTile(
                  title: const Text(
                    'Dart Data Types',
                    style: TextStyle(fontSize: 20),
                  ),
                  collapsedTextColor: Colors.amber[800],
                  textColor: Colors.amber[800],
                  iconColor: Colors.amber[800],
                  children: <Widget>[
                    Builder(
                      builder: (BuildContext context) {
                        return Container(
                          padding: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          child: CheckboxListTile(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            tileColor: Colors.white,
                            activeColor: Colors.amber[800],
                            title: Text(
                              'String',
                              style: TextStyle(
                                  color: Colors.amber[800],
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            controlAffinity: ListTileControlAffinity.leading,
                            value: _ischecked,
                            onFocusChange: (value) {
                              _ischecked = value;
                            },
                            onChanged: (value) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const StringPage()));
                            },
                            checkColor: Colors.white,
                          ),
                        );
                      },
                    ),
                    Builder(
                      builder: (BuildContext context) {
                        return Container(
                          padding: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const NumbersPage()));
                            },
                            child: Text('Numbers'),
                            style: ButtonStyle(
                              foregroundColor:
                                  MaterialStatePropertyAll(Colors.amber[800]),
                            ),
                          ),
                        );
                      },
                    ),
                    Builder(
                      builder: (BuildContext context) {
                        return Container(
                          padding: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const BooleansPage()));
                            },
                            child: Text('Booleans'),
                            style: ButtonStyle(
                              foregroundColor:
                                  MaterialStatePropertyAll(Colors.amber[800]),
                            ),
                          ),
                        );
                      },
                    ),
                    Builder(
                      builder: (BuildContext context) {
                        return Container(
                          padding: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const StringPage()));
                            },
                            child: Text('Lists'),
                            style: ButtonStyle(
                              foregroundColor:
                                  MaterialStatePropertyAll(Colors.amber[800]),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                ExpansionTile(
                  title: const Text('Syntax Basics'),
                  collapsedTextColor: Colors.amber[800],
                  textColor: Colors.amber[800],
                  iconColor: Colors.amber[800],
                  children: <Widget>[
                    Builder(
                      builder: (BuildContext context) {
                        return Container(
                          padding: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Variables'),
                            style: ButtonStyle(
                              foregroundColor:
                                  MaterialStatePropertyAll(Colors.amber[800]),
                            ),
                          ),
                        );
                      },
                    ),
                    Builder(
                      builder: (BuildContext context) {
                        return Container(
                          padding: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Operators'),
                            style: ButtonStyle(
                              foregroundColor:
                                  MaterialStatePropertyAll(Colors.amber[800]),
                            ),
                          ),
                        );
                      },
                    ),
                    Builder(
                      builder: (BuildContext context) {
                        return Container(
                          padding: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Comments'),
                            style: ButtonStyle(
                              foregroundColor:
                                  MaterialStatePropertyAll(Colors.amber[800]),
                            ),
                          ),
                        );
                      },
                    ),
                    Builder(
                      builder: (BuildContext context) {
                        return Container(
                          padding: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Metadata'),
                            style: ButtonStyle(
                              foregroundColor:
                                  MaterialStatePropertyAll(Colors.amber[800]),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                ExpansionTile(
                  title: const Text('Control flow'),
                  collapsedTextColor: Colors.amber[800],
                  textColor: Colors.amber[800],
                  iconColor: Colors.amber[800],
                  children: <Widget>[
                    Builder(
                      builder: (BuildContext context) {
                        return Container(
                          padding: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Loops'),
                            style: ButtonStyle(
                              foregroundColor:
                                  MaterialStatePropertyAll(Colors.amber[800]),
                            ),
                          ),
                        );
                      },
                    ),
                    Builder(
                      builder: (BuildContext context) {
                        return Container(
                          padding: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Branches'),
                            style: ButtonStyle(
                              foregroundColor:
                                  MaterialStatePropertyAll(Colors.amber[800]),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
