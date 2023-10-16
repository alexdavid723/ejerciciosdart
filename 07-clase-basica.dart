void main() {
  final rawJson = {'nombre': 'Tony Stark', 'poder': 'Dinero'};
  final ironman = Heroe.fromJson(rawJson);
  print(ironman);

  final wolverine = Heroe(nombre: 'Logan', poder: 'Regeneración');
  print(wolverine);
}

class Heroe {
  String nombre;
  String poder;

  Heroe({
    required this.nombre,
    required this.poder,
  });

  factory Heroe.fromJson(Map<String, String> json) {
    return Heroe(
      nombre: json['nombre'] ?? 'Desconocido',
      poder: json['poder'] ?? 'No tiene poder',
    );
  }

  @override
  String toString() {
    return 'Heroe: nombre: $nombre, poder: $poder';
  }
}
