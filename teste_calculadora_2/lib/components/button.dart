import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  static const DART = Color.fromARGB(255, 82, 82, 82);
  static const DEFAULT = Color.fromRGBO( 112, 112, 112, 1);
  static const OPERATION = Color.fromARGB(248, 240, 158, 35);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  Button({
    required this.text,
     this.big = false,
     this.color = DEFAULT,
     required this.cb,
  });
  Button.bigdart({
    required this.text,
     this.big = true,
     this.color = DART,
    required this.cb,
  });
  Button.big({
    required this.text,
     this.big = true,
     this.color = DEFAULT,
     required this.cb,
  });
  Button.oeration({
    required this.text,
     this.big = false,
     this.color = OPERATION,
     required this.cb,
  });
  Button.dart({
    required this.text,
     this.big = false,
     this.color = DART,
     required this.cb,
  });

  @override
  Widget build(BuildContext context) {
    //siligar nesse Expander pode da B.O no fianl ###############################
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(     
        style: ElevatedButton.styleFrom(backgroundColor: color),
        onPressed: () => cb(text),
        child: Text(
          text,
            style: TextStyle(            
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w400
            ),           
          ),    
      ),
    );
  }
}