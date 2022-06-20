import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
class CodeConfirmation extends StatelessWidget{

    final TapGestureRecognizer _gestureRecognizer = TapGestureRecognizer()..onTap = () {
    debugPrint("clicked");
  };

   final TapGestureRecognizer _gestureRecognizer2 = TapGestureRecognizer()..onTap = () {
    debugPrint("clicked");
  };

  CodeConfirmation({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(child: Column(children: [ 
        Text('¡ Último Paso !', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold )
        ),
        Text('Confirma tu télefono ', style: TextStyle(fontSize: 18)
        ),
        Text.rich(TextSpan(
          style: const TextStyle(fontSize: 14),
          children: <TextSpan> [
            TextSpan(text: 'Hemos enviado por SMS un'),
            TextSpan(text: ' código de seguridad', style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: ' de seis (6) digitos: ')
          ],
        ),
        ),
        ///////////////////// falta los recuadros de mensaje y timer 
        // boton finalizar
 ElevatedButton (
            onPressed: () {}, 
            child: const Text('Finalizar'),
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
              primary: Colors.red,),
            ),
            // boton enviar codigo nuevamente 
            ElevatedButton (
            onPressed: () {}, 
            child: const Text('Enviar código nuevamente',style: TextStyle(color: Colors.grey),),
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
              primary: Colors.white,),
            ),
            // texto de tiempo de espera
            Text.rich(TextSpan(
          style: const TextStyle(fontSize: 14),
          children: <TextSpan> [
            TextSpan(text: 'Dependiendo de tu operador de telefonía móvil, el envio puede tomar hasta '),
            TextSpan(text: ' 1 minuto', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        ),
          // icono de corazon
            Icon(
            Icons.favorite,
            color: Colors.pink,
            size: 24.0,
           ),
           // texto de politicas de privacidad y terminos de uso
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
      ]),
      ),
    );
  }
}