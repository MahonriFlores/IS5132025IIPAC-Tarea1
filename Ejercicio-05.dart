/*
Cree una clase CuentaBancaria que tenga las propiedades titular y saldo. Implemente métodos
para:
a. Depositar dinero.
b. Retirar dinero (asegurándote de que el saldo no sea negativo).
c. Consultar el saldo.
*/
class CuentaBancaria {
  final String titular;
  double _saldo =0.0;

  CuentaBancaria.CuentaBancaria({required this.titular, double saldo = 0.0}) {
    this.saldo = saldo;
  }

  double get saldo => _saldo;
  set saldo(double nuevoSaldo) {
    if (nuevoSaldo < 0) {
      throw Exception('El saldo no puede ser negativo');
    }
    _saldo = nuevoSaldo;
  }
  
  void consultarSaldo() {
    print('El saldo de $titular es: $saldo');
  }
  

  void depositar(double cantidad){
    if (cantidad>0){
      saldo += cantidad;
      print('Deposito de $cantidad realizado');
      //print('Nuevo saldo: $saldo');
    }
    else{
      print('Valor de deposito es 0 o menor');
    }
  }

  void retiro(double cantidad){
    if (cantidad > 0 && cantidad <= saldo){
      saldo -= cantidad;
      print('Retiro de $cantidad realizado');
      //print('Nuevo saldo: $saldo');
    } else if (cantidad > saldo) {
      print('Saldo insuficiente para retirar $cantidad');
    } else {
      print('Valor de retiro es 0 o menor');
    }
  }
  
}
void main(){
  CuentaBancaria cuentamaho = CuentaBancaria.CuentaBancaria(titular: 'Maho', saldo: 1000.0);
  cuentamaho.consultarSaldo();
  cuentamaho.depositar(500.0);
  cuentamaho.retiro(200.0);
  cuentamaho.retiro(1500.0); 
  cuentamaho.depositar(500.0); 
  cuentamaho.consultarSaldo();
}