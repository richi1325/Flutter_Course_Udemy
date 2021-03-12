import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{

  @override
  createState() => _ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage>{

  final TextStyle _estiloTexto = TextStyle(fontSize: 25);
  int _conteo=0;


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks:',style: _estiloTexto),
            Text('$_conteo',style: _estiloTexto)
          ],
        ),
      ),
      floatingActionButton: _crearBotones()
    );
  }

    Widget _crearBotones(){
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(width: 30.0),
          FloatingActionButton(onPressed: _reset, child: Icon(Icons.exposure_zero)),
          Expanded(child: SizedBox()),
          FloatingActionButton(onPressed: _restar, child: Icon(Icons.remove_circle_rounded)),
          SizedBox(width: 10.0),
          FloatingActionButton(onPressed: _agregar, child: Icon(Icons.add_circle_rounded))
        ]  
      );
    }

    void _agregar(){
      setState( () => _conteo++);
    } 

    void _restar(){
      setState( () => _conteo--);
    }

    void _reset(){
      setState(() => _conteo=0);
    }
}