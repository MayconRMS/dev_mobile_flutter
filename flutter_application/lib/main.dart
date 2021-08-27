import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meu Aplicativo",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meu primeiro aplicativo flutter'),
          centerTitle: true,
          backgroundColor: Colors.blue[300],
        ),
        body: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[
                Text('1 Coluna'),
                Text(
                  '2 Coluna',
                  style: TextStyle(color: Colors.lime),
                ),
                TextField(),
                Row(
                  children: <Widget>[
                    Text('1 Texto'),
                    Text('2 Texto'),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Enviar'),
                )
              ],
            )),
      ),
    );
  }
}
