import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Color.fromARGB(0xFF, 0xFF, 0x00, 0x35),
    ));
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0xFF, 0xE2, 0x0D, 0x39),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: null,
          tooltip: 'Menu',
        ),
        title: Text(
          'Home',
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        color: Color.fromARGB(0xFF, 0xEB, 0x29, 0x38),
                        height: 200.0,
                        padding: EdgeInsets.fromLTRB(25.0, 30.0, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Text(
                                'Olá,',
                                style: TextStyle(
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  
                                ),
                              ),
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 5.0),
                            ),
                            Container(
                              child: Text(
                                'o que está buscando hoje?',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        )
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 140.0, 0, 0),
                        padding: EdgeInsets.only(left: 25.0),
                        child: Wrap(
                          children: <Widget>[
                            MenuCard(Icons.directions_car, 'Quero', 'comprar'),
                            MenuCard(Icons.attach_money, 'Quero', 'vender'),
                            MenuCard(Icons.star, 'Quero', 'sonhar'),
                            MenuCard(Icons.monetization_on, 'Quero', 'financiar'),
                            MenuCard(Icons.directions_car, 'Meu', 'veículo'),
                            MenuCard(Icons.show_chart, 'Ver a ', 'tabela fipe'),
                            MenuCard(Icons.favorite_border, 'Anúncios', 'salvos'),
                            MenuCard(Icons.directions_car, 'Meus', 'anúncios'),
                          ],
                        )
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  String first;
  String second;
  IconData icon;

  MenuCard(this.icon, this.first, this.second);

  @override
  Widget build(BuildContext context) {
    double cardWidth = (MediaQuery.of(context).size.width - 120) / 2;
    double cardHeight = (MediaQuery.of(context).size.width - 200) / 2;
    return Container(
      height: cardHeight,
      width: cardWidth,
      margin: EdgeInsets.only(
        right: 40.0,
        bottom: 15.0,
      ),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.white,
        boxShadow: [ 
          BoxShadow(
            blurRadius: 6.27,
            color: Color.fromARGB( 0x33, 0x00, 0x00, 0x00),
            offset: Offset(0, 5.0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Icon(
              this.icon,
              size: 32.0,
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  this.first,
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                Text(
                  this.second,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}