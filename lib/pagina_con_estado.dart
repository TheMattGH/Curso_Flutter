import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaginaConEstado extends StatefulWidget {
  const PaginaConEstado({super.key});

  @override
  State<PaginaConEstado> createState() => _PaginaConEstadoState();
}

class _PaginaConEstadoState extends State<PaginaConEstado> {
  var nombre = "Matias Echeverria";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina con estado",
            style: GoogleFonts.poppins(color: Colors.black, fontSize: 20.0)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Nombre",
              hintText: "Ingrese su nombre",
              icon: Icon(
                Icons.person,
                color: Colors.black38,
              ),
            ),
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 12.0,
            ),
            onChanged: (value) {
              setState(() {
                nombre = value;
              });
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Apellidos",
              hintText: "Ingrese sus Apllidos",
              icon: Icon(
                Icons.person,
                color: Colors.black38,
              ),
            ),
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 12.0,
            ),
            onChanged: (value) {
              setState(() {
                nombre = value;
              });
            },
          ),
          const SizedBox(height: 20.0),
          Text(
            nombre,
            style: GoogleFonts.poppins(color: Colors.black, fontSize: 20.0),
          ),
        ]),
      ),
    );
  }
}
