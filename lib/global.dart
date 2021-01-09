import 'package:plan_my_growth/models/journey.dart';

class Global {
  static var listJourney = [
    Journey("Apresentar sobre testes",
        "Apresentar meu time sobre piramide de testes", DateTime.now(), ""),
    Journey("Ler o livro DDD", "Livro mto importante", DateTime.now(), ""),
    Journey(
        "Consertar uma impressora",
        "Essencial para um dev. muto bom para melhorar persistencia e paciencia",
        DateTime.now(),
        ""),
    Journey("Crimpar cabo de rede",
        "Um dev precisa saber se virar em infra tambem", DateTime.now(), "")
  ];
}
