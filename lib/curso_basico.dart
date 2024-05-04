import 'dart:convert';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;

class CursoBasicoPage extends StatefulWidget {
  const CursoBasicoPage({super.key});

  @override
  State<CursoBasicoPage> createState() => _CursoBasicoPageState();
}

class _CursoBasicoPageState extends State<CursoBasicoPage> {
  List<dynamic> data = [];
  Future<void> fetchdata() async {
    final response =
        await http.get(Uri.parse('https://www.yanditv.com/api/curso_basico'));
    if (response.statusCode == 200) {
      setState(() {
        data = json.decode(response.body);
      });
    } else {
      throw Exception('No se cargaron los datos');
    }
  }

  @override
  void initState() {
    fetchdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, index) {
            final initial = data[index]['nombre'].substring(0, 1).toUpperCase();
            final name = data[index]['nombre'];
            final cedula = data[index]['cedula'];
            final correo = data[index]['correo'];
            final celular = data[index]['celular'];
            final carrera = (data[index]['carrera'] == '')
                ? 'EXTERNO'
                : data[index]['carrera'];
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                width: 300,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: (carrera == 'EXTERNO')
                      ? HexColor('CB0101')
                      : HexColor("0099CB"),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey[100],
                          child: Text(
                            initial,
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Colors.grey[500],
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                    Container(),
                    const SizedBox(height: 5),
                    Text(
                      name,
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      // ignore: prefer_interpolation_to_compose_strings
                      "CI: " + cedula,
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      correo,
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      celular,
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        const SizedBox(width: 230),
                        Text(
                          carrera,
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
