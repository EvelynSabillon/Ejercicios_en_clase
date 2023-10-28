void main() {
  print("Hola mundo");
  //esto no tiene efecto en la compilacion

  //********declarcion de variables***********
  int edad = 29;
  //var nombre = 'Evelyn Sabillon';
  //no es recomendable definir variables con dymanic
  dynamic nombre = 'Evelyn Sabillon';
  //nombre = 30;
  //nombre = 20.34;
  //CamelCase para declaracion de variables en Darth
  double conDecimales = 10.0;
  //float conDecimales = 10.0;
  bool esMayor = true;

  //**************definiendo una constante ****************
  //"const" se debe inicializar la variable en su declaracion
  //variable que no va cambiar
  //no se establece el tipo de dato
  //darth infiere el tipo de dato que se le esta asignando
  //las constantes deben estar definidas porque sino son nulls
  const clase = "Lenguaje de programacion";
  // con "final" se pueden declarar variables sin inicializar
  final String nombreMascota;

  //y se puede asignar el valor despues
  nombreMascota = 'Apolo';
  //pero luego no puede cambiar
  //nombreMascota = 'Polar';

  //todas las variables en Darth son objetos en su mayoria;
  print('Mi nombre es: ' + nombre);
  //print('tengo ' +edad.toString()+' años');
  //print(edad.runtimeType); //retorna el tipo de dato
  print('tengo ${edad} años');

  print(clase);
  print(nombreMascota);
}