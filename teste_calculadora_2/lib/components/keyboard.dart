import 'package:flutter/material.dart';
import 'button.dart';
import 'button_row.dart';

class Keyboard extends StatelessWidget {

    final void Function(String) cb;

    Keyboard(this.cb);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 500,
      child: Column(
        children: [
          ButtonRow([
            Button.bigdart (text: 'AC', cb: cb,),
            Button.dart (text: '%', cb: cb,),
            Button.oeration(text: '/', cb: cb,),            
          ]),
          SizedBox(height: 1,),
          ButtonRow([
            Button(text: '7', cb: cb,),
            Button(text: '8', cb: cb,),
            Button(text: '9', cb: cb,),
            Button.oeration(text: 'x', cb: cb,),
          ]),
          SizedBox(height: 1,),
           ButtonRow([
            Button(text: '4', cb: cb,),
            Button(text: '5', cb: cb,),
            Button(text: '6', cb: cb,),
            Button.oeration(text: '-', cb: cb,),          
          ]),
          SizedBox(height: 1,),
          ButtonRow([
            Button(text: '1', cb: cb,),
            Button(text: '2', cb: cb,),
            Button(text: '3', cb: cb,), 
            Button.oeration(text: '+', cb: cb,),           
          ]),
          SizedBox(height: 1,),
          ButtonRow([
            Button.big(text: '0', cb: cb,),
            Button(text: '.', cb: cb,),
            Button.oeration(text: '=', cb: cb,),                       
          ]),
          SizedBox(height: 1,),
      ]),
    );
  }
}