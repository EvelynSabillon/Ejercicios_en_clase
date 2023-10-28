void main() {
  
  //new no es necesario para instanciar nuevos objetos
  final batman = Heroe( 'Batman', 'Dinero');
  //los metodos se trabajan como propiedades
  batman.ciudad = 'Gotica';
  print(batman.nombre);
  print(batman.poder);
  //ejecucion de un metodo
  print(batman.ciudad);
  
  
  
}

class Heroe {
  //propiedades 
  //todas las propiedades deben ser final 
  //todas las propiedades por defecto son publicas en darth
  final String nombre;
  final String poder;
  String _ciudad = 'No definido'; //porpiedad privada se define con _
  
  //constructor
  //forma de trabajar constructores en kotlin
  Heroe(this.nombre, this.poder);
  //this es una instancia de la misma clase y solo puede utilizarse 
  //dentro de la misma clase
  /*Heroe( String nombre, String poder ){
    
    this.nombre = nombre;
    this.poder = poder;
    
  }*/
  
  //comportamientos
  
  //Metodos get y set 
  
  //getter
  //CONVENCIONALES
  //String getCiudad() => this._ciudad;
  String getCiudad(){
    return this._ciudad;
  }
  
  //get en flutter, el this es opcional en este punto 
  String get ciudad => this._ciudad;
  
  //setter
  //CONVENCIONAL
  void setCiudad( String valor ){
    this._ciudad = valor;
  }
  
  //void setCiudad( String valor ) => this._ciudad = valor;
  
  //set en flutter, el this es opcional en este punto
  set ciudad( String valor ) => this._ciudad = valor; 
}

