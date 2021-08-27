import 'package:flutter/material.dart';

void main() => runApp(SimpleCalc());

class SimpleCalc extends StatefulWidget {
  SimpleCalc({Key? key}) : super(key: key);

  @override
  _SimpleCalcState createState() => _SimpleCalcState();
}

class _SimpleCalcState extends State<SimpleCalc> {
  String result = '';
  double number1 = 0.0;
  double number2 = 0.0;

  @override
  Widget build(BuildContext context) {
    TextField numberOne = TextField(
      keyboardType: TextInputType.number,
      style: TextStyle(color: Colors.deepOrange),
      decoration: InputDecoration(
          labelText: 'Numero 01',
          labelStyle: TextStyle(color: Colors.deepOrange),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepOrange, width: 2.0))),
      onChanged: (value) => number1 = double.parse(value),
    );

    TextField numberTwo = TextField(
      keyboardType: TextInputType.number,
      style: TextStyle(color: Colors.deepOrange),
      decoration: InputDecoration(
          labelText: 'Numero 02',
          labelStyle: TextStyle(color: Colors.deepOrange),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepOrange, width: 2.0))),
      onChanged: (value) => number2 = double.parse(value),
    );

    Padding clearfix = Padding(padding: EdgeInsets.all(5.0));

    RaisedButton buttonPlus = RaisedButton(
      onPressed: () {
        setState(() {
          double calc = number1 + number2;
          this.result = "O resultado é: ${calc.toStringAsFixed(2)}";
        });
      },
      child: Text("Somar"),
      color: Colors.deepOrange,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    );

    Text result = Text(
      this.result,
      style: TextStyle(color: Colors.deepOrangeAccent),
    );

    Column columns = Column(
      children: <Widget>[
        numberOne,
        clearfix,
        numberTwo,
        clearfix,
        SizedBox(
          child: buttonPlus,
          width: double.infinity,
        ),
        clearfix,
        result
      ],
    );

    return MaterialApp(
      title: 'Simple Calculator',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculadora'),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
        ),
        body: Padding(
          padding: EdgeInsets.all(18.0),
          child: columns,
        ),
      ),
    );
  }
}
