import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget{
   Welcome({super.key});

  final TapGestureRecognizer _gestureRecognizer = TapGestureRecognizer()..onTap = () {
    debugPrint("clicked");
  };

  final TapGestureRecognizer _gestureRecognizer2 = TapGestureRecognizer()..onTap = () {
    debugPrint("clicked");
  };

  @override  
  Widget build(BuildContext context){
    return   Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Page')
        ),
      body: Center(
        child: Column(children:<Widget>[const Text('¡Bienvenido a DatePet!', 
        style: TextStyle(
        fontSize: 24,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w300,

        ),
        
        
        ),
        
           Text('Navega y descubre el alma \n gemela de tu mascota'),

            ElevatedButton(
           child:  Text('¡Empezar!'),
          onPressed:() {},
           ),
            Text.rich(
            TextSpan(
            text:'¿Ya tienes una cuenta? ',
           children : <TextSpan>[
            TextSpan(
              text: 'Inicia Sesión ',
              recognizer: _gestureRecognizer,
              style: TextStyle(
                decoration: TextDecoration.underline,
              )
            ),
           ],
           ),
           ),
           Icon(
            Icons.favorite,
            color: Colors.pink,
            size: 24.0,
           ),
           Row(
            children: [
              Expanded(child: Divider())
            ],
           ),
           Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children:  <Widget>[
    Icon(
      Icons.apple,
      color: Colors.blue,
      size: 24.0,
    ),
    Icon(
      Icons.facebook_rounded,
      color: Colors.blue,
      size: 30.0,
    ),
    Container(
      height: 30.0,
      child: Image.asset('lib/icons/google.png', ),
    ),
  ],
           ),
    Text.rich(
            TextSpan(
            text:'Al crear una cuenta aceptas la ',
           children : <TextSpan>[
            TextSpan(
              text: 'Politica de privacidad ',
              recognizer: _gestureRecognizer2,
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
           ],
           ),
           ),

               Text.rich(
            TextSpan(
            text:'y los ',
           children : <TextSpan>[
            TextSpan(
              text: 'Terminos de uso ',
              recognizer: _gestureRecognizer2,
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
           ],
           ),
           ),
           Text('de DatePet'),
          
           
        ])
           ),
            
        
    );
  }
}


