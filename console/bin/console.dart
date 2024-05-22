

//Exemplo da aula
import 'package:test/test.dart';

void main(List<String> arguments) {
print('Consultando Informações...');
consultarUsuario().then((usuario){
  print(usuario.nome);
  print(usuario.email); 
  print('Informações do usuario constuladas com sucesso');
}).catchError((error){
  //Erro
  print('Erro ao consultar usuário');
});

}

//cenario de erro
// Future<Usuario> consultarUsuario(){
//   return Future.delayed(Duration(seconds: 10), 
//    () => throw Exception(),
//    );
// }


//cenario de acerto
Future<Usuario> consultarUsuario(){
  return Future.delayed(Duration(seconds: 10), 
   () => Usuario('Lucas Miady Miquelin', 'lucas@gmail.com'),
   );
}

class Usuario {

  String nome;
  String email;

  Usuario(this.nome, this.email);

}










// Neste exercício, você irá executar uma função assíncrona que simula o login de um usuário
// e a consulta de seu saldo bancário

// 1 execute o método de login informando o e-mail e a senha
// 2 caso o email e senha sejão válidos, consulte o saldo do usuário informando o token e printando o resultado no console
// 3 caso o email ou senha sejão inválidos, printe a mensagem de erro. 



//Codigo do Exercicio
// void main() {


 
// }


// Future<String> login(String email, String senha) async {
//   // Simulando um atraso de download de 2 segundos
//   await Future.delayed(Duration(seconds: 2));
  
//   if(email != 'email@email.com' || senha != '123') {
//     throw Exception('email ou senha inválida');
//   }

//   // Simulando informações de token de acesso do usuário
//   final token = 'bas89e8ahdkkdassd';

//   return token;
// }

// Future<num> consultarSaldo(String token) async {
//      // Simulando um atraso de download de 3 segundos
//   await Future.delayed(Duration(seconds: 3));
  
//   return 2000;
// }