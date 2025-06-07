//Numeros Unicos en Lista
void main() {
final List<int> numeros = [1,2,3,4,5,1,2,3,3,4,2,2,4,4,7,9,8,9,0,7,2,1,3,4,5,6,8];
final List<int> numerosUnicos = numeros.toSet().toList();
print('Numeros Unicos:');
print(numerosUnicos);

//Ordenar Lista de menor a mayor
numerosUnicos.sort(); 
print('Numeros Unicos Ordenados:');
print(numerosUnicos);
}
