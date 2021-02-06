import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: [_pagina1(), _pagina2()],
    ));
  }

  _pagina1() {
    return Stack(
      children: [_colorFondo(), _imagenFondo(), texto()],
    );
  }

  _pagina2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(
          child: RaisedButton(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 20.0,
                ),
                child: Text(
                  'Bienvenidos',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              shape: StadiumBorder(),
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: () {})),
      color: Color.fromRGBO(100, 192, 218, 1.0),
    );
  }

  _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(109, 192, 218, 1.0),
    );
  }

  _imagenFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  texto() {
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 50.0);
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          Text(
            '11°',
            style: estiloTexto,
          ),
          Text(
            'Miércoles',
            style: estiloTexto,
          ),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            size: 70.0,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
