// Programa para calcular la letra del DNI y almacenar los datos DNI/Nombre en una variable tipo Map().

import 'dart:io';

var personas = {};
var dni = '';
var dniConLetra = '';
var nombre = '';
var modulo = 0;
var letrasDni = ['T', 'R', 'W', 'A', 'G', 'M', 'Y', 'F', 'P', 'D', 'X', 'B', 'N', 'J', 'Z', 'S', 'Q', 'V', 'H', 'L', 'C', 'K', 'E'];

void main(List<String> arguments) {

  do {

    stdout.write('Introduce tu número de DNI sin letra (0=EXIT): ');
    dni = stdin.readLineSync();
    modulo = int.parse(dni)%23;
    dniConLetra = dni + letrasDni[modulo];

    if ((dni != '0') && (!personas.containsKey(dniConLetra))) {

      stdout.write('Introduce tu nombre: ');
      nombre = stdin.readLineSync();
      personas[dniConLetra] = {nombre};

      }

      else if ((dni != '0') && (personas.containsKey(dniConLetra))) { 
      
        print('DNI ya registrado introduzca un DNI valido... \n');

      }

      else {

        break; 
      
      }
    
  } while (dni != '0');

  print (personas);

}
