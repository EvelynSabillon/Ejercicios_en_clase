void main() {
  
  //******ESTRUCTURAS DE REPETICION **********
  
  /*for (int i = 0; i < 5; i++) {
    print('hello ${i + 1}');
  }*/
  
  final List<String> colores = ['azul', 'rojo', 'verde'];
   
  //para invertir el orden de los valores de una lista
  //print(colores.reversed);
  //Invoca una accion para cada elemento del  iteraciones en su respectivo orden 
  /*colores.forEach( (color){
    print(color);
  });*/
  
  //Esto en realidad se comporta como un apuntador
  //final  copiaColores = colores;
  
  //aplica una funcion para cada iterable y devuelve un nuevo iterable  de tipo iterable
  //genera una nueva referencia que no apunta al listado original 
  final copiaColores = colores.map( (color){
    //retornar el valor
    return color;
  }).toList();
  
  copiaColores.removeLast();
  
  print('original: $colores');
  print('copia: $copiaColores');
}