import 'package:exemplos/exemplos.dart' as exemplos;

void main(List<String> arguments) {
  //exemplosRepeticao();
  //exemploMap();
 // exemploClasse();
 //exemploMixim();
 //exemploException();
 exemploNullSafety();
}

void exemplosRepeticao(){
  List<String> produtos = ['PS5', 'Xbox Series X', 'Nintendo'];
  for(var produto in produtos){
    if(produto == 'Xbox Series X'){
      print('Melhor console');
    }else{
    print("Produto: $produto");
    }
  }
}

void exemploMap(){
  Map<String, double> preco ={
    "PS5": 4999.00,
    "Xbox Series X": 5299.99,
    "Nintendo Switch 2": 4299.99
  };
  preco['PS5'] = 4799.99;
  print('Preço do PS5 atualizado ${preco['PS5']}');
}


class Produto{
  String nome;
  double preco;
  String categoria;
  
  Produto(this.nome, this.preco, this.categoria);

  void exibirProduto(){
     print('Produto: ${this.nome}\nPreço ${this.preco}\nCategoria: ${this.categoria} ');
  }
  
  }

  void exemploClasse(){
    Produto produto1 = Produto("PS5", 5000.00, "Video game");
    produto1.exibirProduto();

    VideoGame ps5 = VideoGame("PS5", 5000.00,"Video Game", "Sony");
    ps5.exibirProduto();
  }


class VideoGame extends Produto{
  String marca;

  VideoGame(String nome, double preco,String categoria, this.marca):super(nome,preco,categoria);

  @override  
  void exibirProduto(){
    super.exibirProduto();
    print("Marca: ${this.marca}");
  }
}

abstract class Documento{
  void validarDocumento();
}

class Cpf{
  @override

  void validarDocumento(){
    print('Cpf válido');
  }
}

mixin LogOperacao{
  void log(String mensagem){
    print('Log: ${mensagem}');
  }
}

class ServicoPedido with LogOperacao{
  void processarPedido(){
    log("Processando pedido...");
    log("Pedido processado");
  }
}

void exemploMixim(){
  print("Mixim em Dart\n");
  ServicoPedido servico = ServicoPedido();
  servico.processarPedido();
}

void sacar(double valor, double saldoAtual){
  if(valor> saldoAtual){
    throw Exception("Saldo insuficiente");
  }
  
    print("Saque realizado");
  
}

void exemploException(){
  print("Tratamento de exceção em Dart\n");
  double saldo = 100.00;
  double valorSaque = 150.00;
  try{
    sacar(saldo, valorSaque);
  }catch(e){
    print("Erro ao sacar ${e}");
  }
}

void exemploNullSafety(){
  print("Null Safety em Dart\n");
  String? nomeProduto = null;

  if(nomeProduto != null){
    print("Nome do produto: ${nomeProduto}");
  }
  else{
    print("Nome do produto não disponivel");
  }
}

