import "dart:math";

import "package:flutter/material.dart";

import "cita.dart";


class GeneradorCitas{

  List<Cita> citas;


  List<Color> colores = [
            Colors.pink[400],
            Colors.red[400],
            Colors.green[700],
            Colors.deepPurple[700],
            Colors.cyan[700]];


  GeneradorCitas(){
    citas  = [
      Cita(
          "Aprendí que lo difícil no es llegar a la cima, sino jamás dejar de subir",
          "Walt Disney",
          Colors.orangeAccent[600]),
      Cita(
          "La imaginación es más importante que el conocimiento",
          "Albert Einstein",
          Colors.orangeAccent[600]),
      Cita(
          "Tu tiempo es limitado, así que no lo desperdicies viviendo la vida de otra persona",
          "Steve Jobs",
          Colors.orangeAccent[600]),
      Cita(
          "El éxito es fácil de obtener. Lo difícil es merecerlo.",
          "Albert Camus",
          Colors.orangeAccent[600]),
      Cita(
          "El sabio no dice lo que sabe, y el necio no sabe lo que dice.",
          "Irving Berlin",
          Colors.orangeAccent[600]),

    ];

    print(citas[0].autor);
  }


  Cita obtenerCitaAleatoria(){
    var rng = new Random();
    int num = rng.nextInt(citas.length);

    Color color = colores[num];
    Cita cita = citas[num];

    cita.color = color;
    return cita;
  }
}

