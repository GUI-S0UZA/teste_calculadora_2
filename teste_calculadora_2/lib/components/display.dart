import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Display extends StatelessWidget {

  final String text;

  Display(this.text);
   
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 300,
        width: 800,
        color: Color.fromRGBO(48, 48, 48, 1),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AutoSizeText(
                text,
                minFontSize: 20,
                maxFontSize: 80,
                maxLines: 1,                
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 80,
                  fontWeight: FontWeight.w100,
                  decoration: TextDecoration.none,
                  color: Colors.white
                  //decoration: TextDecoration.none
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}