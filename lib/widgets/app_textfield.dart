import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  String label;
  String simbolo;
  TextEditingController controller;
  Function moeda;
  TextInputType tipo;

  AppTextField(
    this.label, 
    this.simbolo,
    
    {this.controller, this.moeda, this.tipo}
  );
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: moeda,
      keyboardType: tipo,
      style: TextStyle(
        fontSize:19,
        color: Colors.white
      ),
      textAlign: TextAlign.start,

      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.amber, fontSize: 23),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(11)),
        prefixText: simbolo,
      ),
            
     
    );
  }
}
