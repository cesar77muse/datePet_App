import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Registration extends StatelessWidget{
  
  Registration({super.key});

   final TapGestureRecognizer _gestureRecognizer = TapGestureRecognizer()..onTap = () {
    debugPrint("clicked");
  };

   final TapGestureRecognizer _gestureRecognizer2 = TapGestureRecognizer()..onTap = () {
    debugPrint("clicked");
  };


  @override 
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Registration page'),
      ),
      body: Center(
        // Texto de Registro falta incluir el logo arriba
        child: Column(children:<Widget>[const Text('Registro',
          style: TextStyle(
          fontSize: 40,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          ),
          ),
          // Boton de continua con apple 
          ElevatedButton.icon(
            onPressed: () {}, 
            icon: Icon(
              Icons.apple,
              size: 24,
            ),
            label: Text('Continua con Apple'),
            style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
            ),
            // Boton de continua con apple 
          ElevatedButton.icon(
            onPressed: () {}, 
            icon: Icon(
              Icons.facebook,
              size: 24,
            ),
            label: Text('Continua con Facebook'),
            style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
            ),
            // Boton de continua con google
          ElevatedButton.icon(
            onPressed: () {}, 
            icon: Icon(
              Icons.facebook_rounded,
              size: 24,
            ),
            label: Text('Continua con Google'),
            
            ),
              Row(
            children: [
              Expanded(child: Divider())
            ],
           ),
           // Boton de registro con email
            ElevatedButton.icon(
            onPressed: () {}, 
            icon: Icon(
              Icons.message,
              size: 24,
            ),
            label: Text('Registrate con e-mail'),
            style: ElevatedButton.styleFrom(primary: Colors.red),
            ),
           // Texto ya tienes cuenta junto con text Button iniciar sesion
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
           // Icono de corazon
           Icon(
            Icons.favorite,
            color: Colors.pink,
            size: 24.0,
           ),
           // texto de pliticas de privacidad y terminos d euso 
           Text.rich(
            TextSpan(
            text:'Al crear una cuenta aceptas la ',
            style: TextStyle(color: Colors.grey),
           children : <TextSpan>[
            TextSpan(
              text: 'Politica de privacidad ',
              
              recognizer: _gestureRecognizer,
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