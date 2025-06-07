//Cree una clase Empleado que contenga las propiedades nombre, puesto y salario. Luego cree 
//una lista de “empleados” y una función que calcule el salario total de todos los empleados y otra
//que calcule el salario promedio.
void main(){
  final List<Empleado> empleados = [
    Empleado('Juan', 'Gerente', 50000.0),
    Empleado('Ana', 'Desarrolladora', 16000.0),
    Empleado('Luis', 'Diseñador', 30000.0),
    Empleado('Maria', 'Analista', 16000.0),
    Empleado('Julian', 'Tester', 24000.0),
    Empleado('Carla', 'Gerente de Proyectos', 45000.0),
  ];

  double calcularSalarioTotal(List<Empleado> empleados) {
    double total = 0.0;
    for (var empleado in empleados) {
      total += empleado.salario;
    }
    return total;
  }

  double calcularSalarioPromedio(List<Empleado> empleados) {
    if (empleados.isEmpty) return 0.0;
    return calcularSalarioTotal(empleados) / empleados.length;
  }

  for (var empleado in empleados) {
    print('Nombre: ${empleado.nombre}, Puesto: ${empleado.puesto}, Salario: \$${empleado.salario}');
  }

  Future.delayed(Duration(seconds: 1), () {
    print('Calculando salarios...');
  });

    Future.delayed(Duration(seconds: 3), () {
      print('');
      print('Salario Total: \$${calcularSalarioTotal(empleados)}');
      print('Salario Promedio: \$${calcularSalarioPromedio(empleados)}');
  });

}

class Empleado {
  String nombre;
  String puesto;
  double salario;

  Empleado(this.nombre, this.puesto, this.salario);
}