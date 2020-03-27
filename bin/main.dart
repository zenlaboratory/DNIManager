import 'dart:io';

var personas = {};
var dni = '';
var dniConLetra = '';
var nombre = '';
var modulo = 0;
var letrasDni = ['T', 'R', 'W', 'A', 'G', 'M', 'Y',	'F', 'P', 'D',	'X',	'B',	'N',	'J',	'Z',	'S',	'Q',	'V',	'H',	'L', 'C','K', 'E'];

void main(List<String> arguments) {

  do {

    stdout.write('Introduce tu número de DNI (X/EXIT): ');
    dni = stdin.readLineSync();
    print(dni);
    print(dniConLetra);

    if ((dni != 'X') && (!personas.containsKey(dniConLetra))) {

      modulo = int.parse(dni)%23;
      dni = dni + letrasDni[modulo];
      stdout.write('Introduce tu nombre: ');
      nombre = stdin.readLineSync();
      personas[dni] = {nombre};
      dniConLetra = dni;
      print(dniConLetra);

      }

      else if (dni != 'X' && personas.containsKey(dniConLetra)) { 
      
        print('DNI ya registrado introduzca un DNI valido... \n');
        dniConLetra = '';
      
      }

      else {

        break; 
      
      }
    
  } while (dni != 'X');

  print (personas);

}
