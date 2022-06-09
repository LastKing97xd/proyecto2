import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Drawer getDrawer(BuildContext context)//Devolvemos el Drawer
  {
    var header=DrawerHeader(child: Text("Operaciones"),);
    
    ListTile getItem(Icon icon, String description, String route){
      return ListTile(
        leading: icon,
        title: Text(description),
        onTap: (){
          Navigator.pushNamed(context, route);
        },
      );
    }
  ListView getList(){
    return ListView(
      children: <Widget>[
        header,
        getItem(Icon(Icons.architecture), 'M.Aritmetica',"/aritmetica"),
        getItem(Icon(Icons.face), 'C.Caracteres',"/C.Caracteres"),
        getItem(Icon(Icons.view_day_sharp), 'D.Dias',"/"),
        getItem(Icon(Icons.weekend), "N° Semanas", "/"),
      ],
    );
  }
  return Drawer(child: getList());
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Operaciones"),
      ),
      drawer: getDrawer(context),
    );
  }
}