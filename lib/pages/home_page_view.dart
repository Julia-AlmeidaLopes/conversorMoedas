import 'package:conv_de_moedas/widgets/app_textfield.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {

  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {

  final realController = TextEditingController();

  final dolarController = TextEditingController();

  final euroController = TextEditingController();

  final bitCoinController = TextEditingController();

  double dolar = 5.19;
  double euro = 6.12;
  double bitcoin = 56939.83;

  void _realChange(String text){
    double real = double.parse(text);
    dolarController.text = (real/dolar).toStringAsFixed(2);
    euroController.text = (real/euro).toStringAsFixed(2);
    bitCoinController.text = (real/bitcoin).toStringAsFixed(5);      
  }

  void _dolarChange(String text){
    double dolar = double.parse(text);
    realController.text = (dolar * this.dolar).toStringAsFixed(2);
    euroController.text = (dolar * this.dolar / euro).toStringAsFixed(2);
    bitCoinController.text = (dolar * this.dolar/bitcoin).toStringAsFixed(5);
  }

  void _euroChange(String text){
    double euro = double.parse(text);
    realController.text = (euro * this.euro).toStringAsFixed(2);
    dolarController.text = (euro * this.euro / dolar).toStringAsFixed(2);
    bitCoinController.text = (euro * this.euro / bitcoin).toStringAsFixed(5);
  }

  void _bitcoinChange(String text){
    double bitcoin = double.parse(text);
    realController.text = (bitcoin * this.bitcoin).toStringAsFixed(2);
    dolarController.text = (bitcoin * this.bitcoin / dolar).toStringAsFixed(2);
    euroController.text = (bitcoin * this.bitcoin / euro).toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            child: Icon(
              Icons.monetization_on, 
              size: 120,
              color: Colors.amber,
            ),
          ),
            AppTextField("Real", "R\$ ", controller: realController, moeda: _realChange, tipo: TextInputType.number,),
            SizedBox(height: 13),
            AppTextField("Dolar", "US\$ ", controller: dolarController, moeda: _dolarChange, tipo: TextInputType.number,),
            SizedBox(height: 13),
            AppTextField("Euro", "€ ", controller: euroController, moeda: _euroChange, tipo: TextInputType.number,),
            SizedBox(height: 13),
            AppTextField("Bitcoin", "฿ ", controller: bitCoinController, moeda: _bitcoinChange, tipo: TextInputType.number,),
        ]
      ),
    );
  }
}