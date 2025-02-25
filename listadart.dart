void main() {
  print('Demonstração: ');
  Banco bancoExemplo = Banco('Nubank');
  bancoExemplo.definirSaldo = 1500;
  bancoExemplo.mostrarBanco();

  print('--------------');
  print('Tarefa 1 / 2: ');
  Pessoa pessoaTeste = Pessoa('Carlos');
  pessoaTeste.definirIdade = 25;
  pessoaTeste.mostrarInformacoes();

  print('--------------');
  print('Tarefa 3: ');
  Carro carroA = Carro('Corolla');
  carroA.definirMarca = 'Toyota';
  carroA.definirPreco = 90000;
  carroA.mostrarDetalhes();
  
  Carro carroB = Carro('Fiesta');
  carroB.definirMarca = 'Ford';
  carroB.definirPreco = 45000;
  carroB.mostrarDetalhes();

  print('--------------');
  print('Tarefa 4: ');
  ContaBancaria contaCliente = ContaBancaria('Fernanda', 500);
  contaCliente.mostrarInformacoes();
  contaCliente.depositar(2000);
  contaCliente.sacar(100);
  contaCliente.obterSaldo();

  print('--------------');
  print('Tarefa 5: ');
  Aluno estudante = Aluno('Mariana', 8, 6);
  String status = estudante.verificarSituacao();
  print('O estudante $estudante foi $status.');
  
  print('--------------');
  print('Tarefa 6: ');
  Produto item = Produto('Feijão', 5);
  item.aplicarDesconto();

  print('--------------');
  print('Tarefa 7: ');
  Funcionario colaborador = Funcionario('Renato');
  colaborador.definirSalario = 1200;
  double novoSalario = colaborador.calcularAumento();
  print('O salário atualizado do $colaborador é R\$$novoSalario.');
}

// Classe Banco
class Banco {
  late int _saldo;
  final String nomeInstituicao;

  Banco(this.nomeInstituicao);

  set definirSaldo(int saldo) {
    _saldo = saldo;
  }

  int get obterSaldo => _saldo;

  void mostrarBanco() {
    print('Banco escolhido: $nomeInstituicao. Saldo disponível: $_saldo.');
  }
}

// Classe Pessoa
class Pessoa {
  late int _idade;
  final String nome;

  Pessoa(this.nome);

  set definirIdade(int idade) {
    _idade = idade;
  }

  int get obterIdade => _idade;

  void mostrarInformacoes() {
    print('Olá, $nome! Sua idade é $obterIdade anos.');
  }
}

// Classe Carro
class Carro {
  String modelo;
  String _marca = '';
  int _preco = 0;

  Carro(this.modelo);

  set definirMarca(String marca) {
    _marca = marca;
  }

  String get obterMarca => _marca;

  set definirPreco(int preco) {
    if (preco >= 0) {
      _preco = preco;
    } else {
      print('Valor inválido para o preço.');
    }
  }

  int get obterPreco => _preco;

  void mostrarDetalhes() {
    print('Modelo: $modelo, Marca: $_marca, Preço: R\$$_preco.');
  }
}

// Classe ContaBancaria
class ContaBancaria {
  String titular;
  double _saldo;

  ContaBancaria(this.titular, this._saldo);

  double get saldo => _saldo;

  set saldo(double valor) {
    _saldo = valor;
  }

  void mostrarInformacoes() {
    print('Titular: $titular, Saldo disponível: $_saldo.');
  }

  void depositar(double valor) {
    _saldo += valor;
  }

  void sacar(double valor) {
    _saldo -= valor;
  }

  void obterSaldo() {
    print('Saldo atual: R\$$_saldo.');
  }
}

// Classe Aluno
class Aluno {
  String nome;
  double _nota1;
  double _nota2;

  Aluno(this.nome, this._nota1, this._nota2);

  double calcularMedia() {
    return (_nota1 + _nota2) / 2;
  }

  String verificarSituacao() {
    return calcularMedia() >= 7 ? 'aprovado' : 'reprovado';
  }

  @override
  String toString() {
    return nome;
  }
}

// Classe Produto
class Produto {
  String nome;
  double _preco;

  Produto(this.nome, this._preco);

  set definirPreco(double preco) {
    if (preco > 0) {
      _preco = preco;
    } else {
      print('Valor inválido para o preço.');
    }
  }

  double get obterPreco => _preco;

  void aplicarDesconto() {
    double percentualDesconto = 20;
    double precoFinal = _preco - (_preco * percentualDesconto / 100);
    print('O produto $nome tinha preço R\$_preco, e com $percentualDesconto% de desconto ficou R\$$precoFinal.');
  }
}

// Classe Funcionario
class Funcionario {
  String nome;
  double _salario = 0;

  Funcionario(this.nome);

  set definirSalario(double salario) {
    if (salario > 0) {
      _salario = salario;
    } else {
      print('Valor inválido para o salário.');
    }
  }

  double get obterSalario => _salario;

  double calcularAumento() {
    double aumento = 30;
    return _salario + (_salario * aumento / 100);
  }

  @override
  String toString() {
    return nome;
  }
}
