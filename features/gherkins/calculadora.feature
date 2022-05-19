# language: pt

Funcionalidade: Calculadora

  @calculadora
  Esquema do Cenario: Efetuando operações na calculadora
    Dado abrir a calculadora
    Quando efetuar a <operacao> de <num1> e <num2>
    Então o resultado <resultado> deve ser exibido

    Exemplos:
    | num1 | operacao        | num2 | resultado |
    | -10  | "soma"          | 1    | "-9"      |
    | 10   | "subtração"     | 1    | "9"       |
    | 1    | "multiplicação" | 2    | "2"       |
    | 1    | "divisão"       | 2    | "0.5"     |
