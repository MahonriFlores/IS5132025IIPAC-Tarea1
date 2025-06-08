/*
Cree una clase Libro con las propiedades titulo, autor, y anioPublicacion. Crea una clase
Biblioteca que contenga una lista de libros y funciones para:
a. Agregar libros.
b. Eliminar libros.
c. Buscar libros por autor.
d. Listar todos los libros ordenados por año de publicación
*/
class Libro {
  final String titulo;
  final String autor;
  final int publicado;
  Libro({required this.titulo, this.autor = 'Desconocido',required this.publicado});
}

class Biblioteca {
  List<Libro> libros = [];

  void agregarLibro(Libro libro) {
    libros.add(libro);
  }

  void eliminarLibro(String titulo) {
    libros.removeWhere((libro) => libro.titulo == titulo);
  }

  List<Libro> buscarPorAutor(String autor) {
    return libros.where((libro) => libro.autor == autor).toList();
  }

  List<Libro> listarLibrosOrdenados() {
    libros.sort((a, b) => a.publicado.compareTo(b.publicado));
    return libros;
  }
}
void main(){
  Biblioteca biblioteca = Biblioteca();
  
  // Agregar libros
  biblioteca.agregarLibro(Libro(titulo: '1984', autor: 'George', publicado: 1949));
  biblioteca.agregarLibro(Libro(titulo: 'El Principito', autor: 'Antoine', publicado: 1943));
  biblioteca.agregarLibro(Libro(titulo: 'Cien anios de soledad', autor: 'Gabriel', publicado: 1967));
  biblioteca.agregarLibro(Libro(titulo: 'El Aleph', autor: 'Jorge Luis', publicado: 1949));
  biblioteca.agregarLibro(Libro(titulo: 'Rayuela', publicado: 1963));
  print('--------Imprimiento lista de libros ordenados--------');
  biblioteca.listarLibrosOrdenados().forEach((libro) {
    print('${libro.titulo} - ${libro.autor} (${libro.publicado})');
  });


  print("-----------Eliminando un libro titulado 1984-----------");
  biblioteca.eliminarLibro('1984');
  print("----------Buscando el autor Gabriel------------");
  biblioteca.buscarPorAutor('Gabriel').forEach((libro) {
    print('Encontrado: ${libro.titulo} - ${libro.autor} (${libro.publicado})');
  });
  print("------------Mostrando nuevamente la lista ordenada----------");
  biblioteca.listarLibrosOrdenados().forEach((libro) {
    print('${libro.titulo} - ${libro.autor} (${libro.publicado})');
  });




}