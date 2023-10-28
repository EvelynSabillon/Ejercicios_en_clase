void main() {
  
  //listas
  //Pueden contener distintos tipos de datos mientras no se haya definido
  //el tipo de variable
            //tipo de dato entre <>
  final List<String> colores = ['azul','rojo', 'verde'];
  
  //const no puede mutar ni sus referencias
  
  //las listas son objetos
  print(colores);
  colores.add('morado'); //funcion que agrega un item a la lista
  colores.removeLast(); //funcion que elimina el ultimo elemento de la lista
  colores.removeAt(0); //funcion que elimina el elemento en el indice indicado
  colores.add('amarillo'); //funcion que agrega un item a la lista
  
  print(colores);
  print(colores.length); //funcion que retorno el tamaño de la lista
  
  print(colores[1]);
  
  
  
  ////Mapas o Diccionarios
  //****objeto claves(string de preferencia) - valor
  //funiona con una clave y un valor
  //no hay posiciones o indices, posiciones fijas
  //tenemos una varibable
  
  //crear un objeto de mascota;
  // Los mapas no son iterables 
  final Map<String,dynamic> mascota = {
    'nombre': 'Apolo',
    'raza' : 'Terrier',
    'edad' : 2,
    'estaVacunado': true,
    'comidasFavoritas': ['pollito','sandia', 'hielo'],
    //2: {},
    //true: false,   //no deberia utilizarse valores que no sean strings para claves
    //'nombre':'' //no se pueden repetir claves 
  };
  
  //se pueden obtener los valores por medio de referencia a su clave
  print( mascota['nombre']);
  print( mascota['raza']);
  print( mascota[2]); //nul 
  
  //Se puede agregar una nueva clave o propiedades al Map
  mascota['apodo'] = "Apolito";
  
  print(mascota);
  
  //const vuelve las variables en objetos inmutables
  
  
  //metodos o funciones para trabajar con los mapas 
  
  //Variable iterable, lista con todas las claves y valores del objeto
  //Obtiene todas las entradas del objeto 
  //Para recorrer todos los valores del objeto
  print(mascota.entries);
  
  //los datos inmutables estan entre parentesis
  //Devuelve un iterable solo con las claves del objeto, funcion inmutable
  print(mascota.keys);
}
