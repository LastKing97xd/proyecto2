import 'package:flutter/material.dart';

class Caracter extends StatefulWidget {
  static const String routeName = "/C.Caracteres";

  @override
  _Caracter createState() => _Caracter();
}

enum DialogAction { yes, no }

class _Caracter extends State<Caracter> {
  final caracteresController = TextEditingController();
  String inputValue = "";

  void alertResult(DialogAction action) {
    print("Tu Seleccion es $action");
  }

  void showAlert(String value) {
    AlertDialog dialog = AlertDialog(
      content: Text(
        'La suma de la cantidad de caracteres es: $value',
      ),
      actions: <Widget>[
        FlatButton(
            child: Text("Si"),
            onPressed: () {
              alertResult(DialogAction.yes);
            }),
        FlatButton(
            child: Text("No"),
            onPressed: () {
              alertResult(DialogAction.no);
            }),
      ],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return dialog;
        });
  }

  void onChanged(String value) {
    setState(() {
      inputValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Cantidad de Caracteres"),
      ),
      body: Container(
        child: Center(
          child: Center(
            child: Column(
              children: [
                TextField(
                  controller: caracteresController,
                  decoration: InputDecoration(hintText: "Ingrese palabras"),
                ),
                RaisedButton(
                    child: Text("Ver Alerta"),
                    onPressed: () {
                      double cantCaracte = 0;
                      double suma = 0;
                      cantCaracte = double.parse(
                          caracteresController.text.length.toString());
                      suma = ((cantCaracte * (cantCaracte + 1)) / 2);

                      showAlert(suma.toString());
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}