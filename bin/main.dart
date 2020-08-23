// Programa para calcular la letra del DNI y almacenar los datos DNI/Nombre en una variable tipo Map().
// NOTA: No se chequean los errores de introducción de datos.

// Importación de las librerias necesarias pra el programa, dart:io para posibilitar la entrada y salida de datos por consola.

import 'dart:io';

// Declaración de las variables utilizadas en el programa.

var personas = {};
var dni = '';
var dniConLetra = '';
var nombre = '';
var modulo = 0;
var letrasDni = ['T', 'R', 'W', 'A', 'G', 'M', 'Y', 'F', 'P', 'D', 'X', 'B', 'N', 'J', 'Z', 'S', 'Q', 'V', 'H', 'L', 'C', 'K', 'E'];

// Programa principal.

void main(List<String> arguments) {

  do {

    // Introducción del número del DNI del usuario y cálculo de la letra correspondiente al número introducido.

    stdout.write('Introduce tu número de DNI sin letra (0=EXIT): ');
    dni = stdin.readLineSync();
    modulo = int.parse(dni)%23;
    dniConLetra = dni + letrasDni[modulo];

    // Comprobamos la opción introducida por el ususario y verificamos que no es el valor 0 para salir del programa y que el DNI no está registrado.

    if ((dni != '0') && (!personas.containsKey(dniConLetra))) {

      // Introduccción del nombre del usuario.

      stdout.write('Introduce tu nombre: ');
      nombre = stdin.readLineSync();
      personas[dniConLetra] = nombre;

      }

      // Comprobamos si el DNI ya está registrado.

      else if (personas.containsKey(dniConLetra)) { 

        // En este caso el DNI ya se encuentra registrado en el sistema.
      
        print('\n DNI ya registrado introduzca un DNI valido... \n');

      }

      else {

        // Salida de la condicional al introducir el valor 0, el usuario ha seleccionado salir del programa.

        break; 
      
      }
    
  } while (dni != '0');

  // Impresión del Map() con los datos introducidos.

  print('\nLISTADO DE PERSONAS REGISTRADAS');
  print('=============================== \n');
  personas.forEach((dniConLetra, nombre) => print('$dniConLetra \t $nombre'));

}