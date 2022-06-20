import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter/gestures.dart';
class RegistrationForm extends StatefulWidget{


  RegistrationForm({super.key});


  

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
  
}

class _RegistrationFormState extends State<RegistrationForm> {
  final TapGestureRecognizer _gestureRecognizer = TapGestureRecognizer()..onTap = () {
    debugPrint("clicked");
  };

   final TapGestureRecognizer _gestureRecognizer2 = TapGestureRecognizer()..onTap = () {
    debugPrint("clicked");
  };
  TextEditingController _date = TextEditingController();
  
  

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar : AppBar(title: Text('RegistrationForm',)),
      body: Center(child:Column(children: [
        Text('Primero necesitamos tus datos', style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        ),
        Text('¡ más adelante los de tu mascota! '),
        // Campo de nombre
        TextFormField(
         decoration:  InputDecoration(
      labelText: 'Cual es tu nombre?',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      prefixIcon: Padding(
        padding: EdgeInsets.all(0.0),
        child: Icon(
          Icons.person,
          color: Colors.grey,
        ),
      )
         ),
        ),
        // Campo de fecha de nacimiento
        TextFormField(
          controller: _date,
          decoration:  InputDecoration(
            icon: Icon(Icons.calendar_today_rounded),
            border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
            labelText: 'Fecha de nacimiento'),
            
            onTap: () async {
              DateTime? pickkedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1930),
                lastDate: DateTime(2040));

                if(pickkedDate != null){
                  setState(() {
                    _date.text = DateFormat('yyyy-MM-dd').format(pickkedDate); 
                  });
                }
            },
            ),
            // campo numero de telefono
            TextFormField(
         decoration:  InputDecoration(
      labelText: 'Escribe tu teléfono',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      prefixIcon: Padding(
        padding: EdgeInsets.all(0.0),
        child: Icon(
          Icons.phone,
          color: Colors.grey,
        ),
      )
         ),
         keyboardType: TextInputType.number,
         
        ),
        // texto abajo del campo
        Text("Tendrás que confirmar este número mas adelante",
        style: TextStyle(fontSize: 10),textAlign: TextAlign.left,),  /// no me dejo correrlo a la izquierda
        // campo de password
        TextFormField(
          obscureText: true,
         decoration:  InputDecoration(
      labelText: 'Crea una contraseña ',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      prefixIcon: Padding(
        padding: EdgeInsets.all(0.0),
        child: Icon(
          Icons.password_rounded,
          color: Colors.grey,
        ),
      )
         ),
        ),
        // texto abajo de campo
        Text('Debe tener mínimo 8 carácteres',style: TextStyle(fontSize: 10)),
        // campo repite contraseña
        // campo de password
        TextFormField(
          obscureText: true,
         decoration:  InputDecoration(
      labelText: 'Repite la contraseña ',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      prefixIcon: Padding(
        padding: EdgeInsets.all(0.0),
        child: Icon(
          Icons.password_outlined,
          color: Colors.grey,
        ),
      )
         ),
        ),
        // boton de crear una cuenta
        ElevatedButton (
            onPressed: () {}, 
            child: const Text('Crear una cuenta'),
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
              primary: Colors.red,),
            ),
            // text button de cancelar
            TextButton(
              style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
              primary: Colors.red
            ),
            onPressed: () {},
            child: const Text('Cancelar'),
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
      ],)
      ),

    );
  }
}