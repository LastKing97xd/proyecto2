import 'package:flutter/material.dart';

class Set extends StatefulWidget {
  static const String routeName = "/aritmetica";
  @override
  _SettingState createState() => new _SettingState();
}

enum DialogAction { yes, no }

class _SettingState extends State<Set> {
  String inputValue = "";
  double inputValue1 = 0;
  double inputValue2 = 0;
  double inputValue3 = 0;
  void alertResult(DialogAction action) {
    print("Tu seleccion es: $action");
  }

  void showAlert(String value) {
    AlertDialog dialog = AlertDialog(
      content: Text(value),
      actions: <Widget>[],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return dialog;
        });
  }

  void onChanged1(String value1) {
    setState(() {
      inputValue1 = double.parse(value1);
    });
  }

  void onChanged2(String value1) {
    setState(() {
      inputValue2 = double.parse(value1);
    });
  }

  void onChanged3(String value1) {
    setState(() {
      inputValue3 = double.parse(value1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Alert Dialog"),
      ),
      body: Container(
          child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(hintText: "Ingrese el Numero 1"),
            onChanged: onChanged1,
          ),
          TextField(
            decoration: InputDecoration(hintText: "Ingrese el Numero 2"),
            onChanged: onChanged2,
          ),
          TextField(
            decoration: InputDecoration(hintText: "Ingrese el Numero 3"),
            onChanged: onChanged3,
          ),
          RaisedButton(
              child: Text("Ver Alerta"),
              onPressed: () {
                double resultado =(inputValue1 + inputValue2 + inputValue3) / 3;
                double promedio = resultado.toDouble();
                inputValue = promedio.toString();
                showAlert(inputValue);
              }),
        ],
      )),
    );
  }
}