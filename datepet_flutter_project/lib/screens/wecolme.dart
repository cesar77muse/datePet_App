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
        // Texto bienvenida datePet
        child: Column(children:<Widget>[const Text('¡Bienvenido a DatePet!', 
        style: TextStyle(
        fontSize: 24,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w300,

        ),
        
        
        ),
        // Texto navega y descubre el alma
           Text('Navega y descubre el alma \n gemela de tu mascota'),
        // boton de empezar
            ElevatedButton(
           child:  Text('¡Empezar!'),
          onPressed:() {},
           ),
           // texto de ya tienes una cuenta con text button de inicia sesion
            Text.rich(
            TextSpan(
            text:'¿Ya tienes una cuenta? ',
             style: TextStyle(color: Colors.red),
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
           // icono de corazon
           Icon(
            Icons.favorite,
            color: Colors.pink,
            size: 24.0,
           ),
           // arreglos de iconos (row) de acceso con redes
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
      child: Image.asset('lib/icons/google.png', ),  // tener en cuenta que ya hay libreria con icono de google pero sin colores
    ),
  ],
           ),
    // texto de politicas de privacidad y terminos d euso 
           Text.rich(
            TextSpan(
            text:'Al crear una cuenta aceptas la ',
            style: TextStyle(color: Colors.grey),
           children : <TextSpan>[
            TextSpan(
              text: 'Politica de privacidad ',
              
              recognizer: _gestureRecognizer2,
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.grey,
              ),
            ),
           ],
           ),
           ),

               Text.rich(
            TextSpan(
            text:'y los ',
            style: TextStyle(color: Colors.grey),
           children : <TextSpan>[
            TextSpan(
              text: 'Terminos de uso ',
              recognizer: _gestureRecognizer2,
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.grey
              ),
            ),
            TextSpan(text: 'de DatePet',
            style: TextStyle(color: Colors.grey),),
           ],
           ),
           ),
          
           
        ])
           ),
            
        
    );
  }
}


