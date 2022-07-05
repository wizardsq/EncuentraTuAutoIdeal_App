class Modelo {
  final int precio;
  final int man;
  final int puerta;
  final int persona;
  final int cajuela;
  final int seguridad;

  Modelo({
    required this.precio,
    required this.man,
    required this.puerta,
    required this.persona,
    required this.cajuela,
    required this.seguridad,
  
  });

  Map<String, dynamic> toJson() => {
        "precio": precio,
        "mantenimiento": man,
        "puertas": puerta,
        "personas": persona,
        "cajuela": cajuela,
        "seguridad": seguridad,
      };
}
