import 'package:conv_de_moedas/widgets/app_textfield.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget {
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
            AppTextField("Real", "R\$ ", controller: TextEditingController(), moeda: (String text){double real = double.parse(text);}, tipo: TextInputType.number,),
            SizedBox(height: 13),
            AppTextField("Dolar", "US\$ ", controller: TextEditingController(), moeda: (String text){print(text);}, tipo: TextInputType.number,),
            SizedBox(height: 13),
            AppTextField("Euro", "€ ", controller: TextEditingController(), moeda: (String text){print(text);}, tipo: TextInputType.number,),
            SizedBox(height: 13),
            AppTextField("Bitcoin", "฿ ", controller: TextEditingController(), moeda: (String text){print(text);}, tipo: TextInputType.number,),
            /*decoration: InputDecoration(
              labelText: "Real",
              labelStyle: TextStyle(color: Colors.amber, fontSize: 23),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(11)),
              prefixText: "R\$ "
            ),
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.white, fontSize: 19),
          ),
           TextField(
            decoration: InputDecoration(
              labelText: "Dolar",
              labelStyle: TextStyle(color: Colors.amber, fontSize: 23),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(11)),
              prefixText: "US\$ "
            ),
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.white, fontSize: 19),
          ),
           TextField(
            decoration: InputDecoration(
              labelText: "Euro",
              labelStyle: TextStyle(color: Colors.amber, fontSize: 23),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(11)),
              prefixText: "€ "
            ),
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.white, fontSize: 19),
          ),
           TextField(
            decoration: InputDecoration(
              labelText: "Bitcoin",
              labelStyle: TextStyle(color: Colors.amber, fontSize: 23),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(11)),
              prefixText: "฿ "
            ),
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.white, fontSize: 19),*/
        ]
      ),
    );
  }
}