/*
Cree una clase CuentaBancaria que tenga las propiedades titular y saldo. Implemente métodos
para:
a. Depositar dinero.
b. Retirar dinero (asegurándote de que el saldo no sea negativo).
c. Consultar el saldo.
*/
class CuentaBancaria {
  final String titular;
  double _saldo;

  CuentaBancaria({required this.titular, this._saldo = 0.0});
  
  double get saldo => this._saldo;
  set saldo(double valor) {
    if (valor >= 0) {
      _saldo = valor;
    } else {
      print('El saldo no puede ser negativo.');
    }
  }

  void depositar(double cantidad){
    if (cantidad>0){
      saldo += cantidad;>
      print('Deposito de $cantidad realizado.');
      print('Nuevo saldo: $saldo');
    }
    else{
      print('Valor de deposito es 0 o menor.');
    }
  }

  void retiro(double cantidad){
    if (cantidad > 0 && cantidad <= saldo){
      saldo -= cantidad;
      print('Retiro de $cantidad realizado.');
      print('Nuevo saldo: $saldo');
    } else if (cantidad > saldo) {
      print('Saldo insuficiente para retirar $cantidad.');
    } else {
      print('Valor de retiro es 0 o menor.');
    }
  }
  
}
void main(){
  
}