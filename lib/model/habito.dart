// Modelagem de Dados //

class Habito {
  // Atributos:
  String titulo; // armazena o titulo do habito
  bool concluida; // status do habito

  // Construtor:
  Habito({required this.titulo, this.concluida = false});

  // classe de modelagem de dados, todo hábito é um obj da classe Habito
  // todo hábito tem um tiulo e um status de conclusão
}
