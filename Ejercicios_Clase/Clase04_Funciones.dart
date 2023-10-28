void main() {
  //saludo();
  //print(saludo());
  //Entre menos argumentos se le asigne a la funcion es mejor
  //Es importante tipar los parametros
  //funciones con parametros o argumentos posicionales es obligatorio respetar el orden
  //y la cantidad de parametros establecidos en la funcion
  final resultado = crearMascota('Apolo', 'Terrier');
  final resultado2 = crearMascota('Pequines', 'Polar');

  final resultado3 = crearMascotaMejorada(nombre: 'Polar');
  final resultado4 = crearMascotaMejorada2('Polar', raza:'Pequines');

  /*print(resultado);
  print(resultado2);
  print(resultado3);*/
  //print(resultado4);
  
  //print(areaTriangulo(base: 2, altura: 5));
  //print( calcularArea(base: 6,altura: 5));
  
  print( operaciones(operador:'*', num1: 4, num2: 2));
}

//No se puede definir funciones como Const y final
dynamic saludo() {
  print('Hola mundo'); //salida
  return [1, 2, 3, 'Hola'];
}

String crearMascota(String nombre, String raza) {
  return 'Creando a la mascota $nombre de raza $raza';
}

//Null-Safety para validacion de datos que son obligatorios y para estar preparados
//por si esos datos vienen nulos

//Los parametros o argumentos con nombre, por defecto son opcionales
//El signo de interrogacion indica que el parametro es opcional
//La palabra required indica que el parametro con nombre es obligatorio
String crearMascotaMejorada({required String nombre, String? raza}) {
  return 'Creando a la mascota $nombre de raza $raza';
}
//Se puede hacer una combinacion de argumentos posicionales con argumentos con nombres
String crearMascotaMejorada2(String nombre, { String? raza}) {
  return 'Creando a la mascota $nombre de raza $raza';
}

double areaTriangulo({required double base, required double altura}) {
  
  return (base * altura) / 2;
}

 
double calcularArea( {required int base,  required int altura} ){
  //otras formas de usar funciones con nombres haciendo validacion de nulos
  //agregando valores por defecto 
  /*if( base == null || altura == null)
  {
    return 0.0;
  }*/
  
  final resultado = base * altura /2;
  return resultado;
}

//Expresiones landa,
double calcularAreaTriangulo( int base, int altura )
   => base * altura / 2;

String validarEdad( int edad ){
  return edad >18  ?'Es mayor de edad ': 'Es menor de edad';
}

//El doble signo de interrogacion sirev 


//Funcion que reciba 3 parametros 2 obligatorios y 1 string opciones 
double operaciones({required double num1, required double num2,String? operador}) 
{
  if( operador == null )
  {
    return 0;
  }
  
  if( operador == '-')
  {
    return num1 - num2;
  }
  
  if( operador == '+')
  {
    return num1 + num2;
  }
  
  if( operador == '*')
  {
    return num1 * num2;
  }
  
  if( operador == '/')
  {
    if( num2 == 0 )
    {
      return 0;
    }
     return num1 / num2; 
  }
  
  return 0;
 
}
  //Los parametros por defecto deben ir al final
  double operacionesBasicas( double numero1,double numero2, {String? operacion = '+',}) 
  {
    double resultado = 0.0;

    switch (operacion) {
      case '=':
        resultado = numero1 + numero2;
        break;
      case '-':
        resultado = numero1 - numero2;
        break;
      case '*':
        resultado = numero1 * numero2;
        break;
      case '/':
        if (numero2 == 0) {
          return 0.0;
        }
        resultado = numero1 / numero2;
        break;
      default:
        resultado = 0.0;
    }

    return resultado;
  }
  
