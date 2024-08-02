//eğitim sayfası buradan başlayacak, sadece senin belirlediğin cümle yazıldığında sıradaki aşamaya geçebilecek
// aynı zamanda bu sayfaya şöyle küçük bir ekran açılacak ve içinde o konu anlatımı olacak
// bu sayfada sanki kontrol sistemi varmış gibi olacak, bu eklentiyi w3school kısmından yazılım kısmından kopyalayabilirsen yap olmuyorsa console varmış gibi bir dizayn var.
// bu sayfadan kostüm sayfasına geçilecek

import 'package:flutter/material.dart';
import 'package:gamification_app/pages/menu_page.dart';

class StringPage extends StatelessWidget {
  const StringPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF132030),
      appBar: AppBar(
        title: const Text('String'),
        backgroundColor: Color(0xFF121A26),
        titleTextStyle: TextStyle(color: Colors.amber[800], fontSize: 30.0),
        iconTheme: IconThemeData(color: Colors.amber[800]),
        leading: IconButton(
            icon: Icon(Icons.view_list_outlined),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => MainPage(),
                ),
              );
            }),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => AlterDialog(),
                  ),
                );
              },
              icon: Icon(
                Icons.question_mark_sharp,
                color: Colors.amber[800],
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                      Text(
                        'String greeting =',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'hello, world(',
                          hintStyle: TextStyle(color: Colors.blue),
                          fillColor: Colors.white,
                          filled: true,
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 5, right: 5)),
                      Text('print(',
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: '"Hello," + " World");',
                          hintStyle: TextStyle(color: Colors.red),
                          fillColor: Colors.white,
                          filled: true,
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 3, color: Colors.red),
                          ),
                        ),
                      )),
                    ],
                  ),
                ],
              ),
            ),
            FloatingActionButton.extended(
              backgroundColor: Colors.amber[800],
              onPressed: () {
                // eğer cevap doğruysa kostüm sayfasına yönlendirilecek, eğer yanlışsa instruction sayfasına. instruction sayfasında da cevabı gör seçeneği olacak.
              },
              icon: Icon(
                Icons.play_arrow,
                size: 24.0,
                color: Color(0xFF132030),
              ),
              label: Text('RUN'),
              extendedTextStyle: TextStyle(
                  color: Color(0xFF132030),
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF132030),
      appBar: AppBar(
        title: const Text('String'),
        backgroundColor: Color(0xFF121A26),
        titleTextStyle: TextStyle(color: Colors.amber[800], fontSize: 30.0),
        iconTheme: IconThemeData(color: Colors.amber[800]),
        leading: IconButton(
            icon: Icon(Icons.view_list_outlined),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => MainPage(),
                ),
              );
            }),
      ),
      body: Center(
        child: Text('hi'),
      ),
    );
  }
}

class BooleansPage extends StatelessWidget {
  const BooleansPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF132030),
      appBar: AppBar(
        title: const Text('String'),
        backgroundColor: Color(0xFF121A26),
        titleTextStyle: TextStyle(color: Colors.amber[800], fontSize: 30.0),
        iconTheme: IconThemeData(color: Colors.amber[800]),
        leading: IconButton(
            icon: Icon(Icons.view_list_outlined),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => MainPage(),
                ),
              );
            }),
      ),
      body: Center(
        child: Text('hi'),
      ),
    );
  }
}

class AlterDialog extends StatelessWidget {
  const AlterDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF132030),
      appBar: AppBar(
        title: const Text('String'),
        backgroundColor: Color(0xFF121A26),
        titleTextStyle: TextStyle(color: Colors.amber[800], fontSize: 30.0),
      ),
      body: AlertDialog(
        backgroundColor: Color.fromARGB(190, 19, 32, 48),
        title: Text("String nedir?"),
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.amber[800],
            fontSize: 25),
        actionsOverflowButtonSpacing: 20,
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => StringPage(),
                ),
              );
            },
            child: Text("Anladım"),
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.amber[800]),
                foregroundColor: MaterialStatePropertyAll(Colors.white)),
          ),
        ],
        content: SingleChildScrollView(
          child: Text(
              "String veri türü, bir karakter dizisini temsil eder. Bir Dart dizisi, UTF 16 kod birimleri dizisidir. Dart'taki dize değerleri, tek veya çift veya üçlü tırnak kullanılarak temsil edilebilir. Tek satırlık dizeler, tek veya çift tırnak kullanılarak temsil edilir. Üçlü tırnak, çok satırlı dizeleri temsil etmek için kullanılır."),
        ),
        contentTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
