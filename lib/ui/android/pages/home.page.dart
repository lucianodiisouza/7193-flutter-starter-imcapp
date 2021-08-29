import 'package:flutter/material.dart';
import 'package:imcflutter/blocs/imc.bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = new ImcBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculo IMC")),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              controller: bloc.heightCtrl,
              decoration: InputDecoration(labelText: "Altura (cm)"),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              controller: bloc.weightCtrl,
              decoration: InputDecoration(
                labelText: "Peso (kg)",
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
              padding: EdgeInsets.all(20),
              child: Text(bloc.result, textAlign: TextAlign.center)),
          Padding(
              padding: EdgeInsets.all(20),
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor),
                child: Text(
                  "Calcular",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  setState(() {
                    bloc.calculate();
                  });
                },
              ))
        ],
      ),
    );
  }
}
