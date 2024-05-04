//import 'dart:math';
import 'package:curso_basico_flutter/background.dart';
import 'package:curso_basico_flutter/curso_basico.dart';
import 'package:curso_basico_flutter/dashboard.dart';
import 'package:curso_basico_flutter/lista_page.dart';
//import 'package:curso_basico_flutter/pagina_con_estado.dart';
import 'package:curso_basico_flutter/tarjetas.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:curso_basico_flutter/lista_page.dart';
//import 'package:hexcolor/hexcolor.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _SelectIndex = 0;

  final List<Widget> pages = [
    const Dashboard(),
    const Tarjetas(),
    const CursoBasicoPage(),
  ];
  void _onPressedDashboard(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return const Dashboard();
      },
    ));
  }

  // void _onPressedBackground(BuildContext context) {
  //   Navigator.of(context).push(MaterialPageRoute(
  //     builder: (context) {
  //       return const BackgroundPage();
  //     },
  //   ));
  // }

  // void _onPressedEstados(BuildContext context) {
  //   Navigator.of(context).push(MaterialPageRoute(
  //     builder: (context) {
  //       return const PaginaConEstado();
  //     },
  //   ));
  // }

  void _onNavigationItemTapped(int index) {
    setState(() {
      _SelectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            _onPressedDashboard(context);
          },
          child: Center(
              child: Text(
            "Curso de Flutter",
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 25.0,
            ),
            textAlign: TextAlign.left,
          )),
        ),
        backgroundColor: Colors.white,
        actions: const [
          Icon(
            Icons.settings,
            color: Colors.black38,
            size: 33.0,
          ),
        ],
        leading: const Icon(
          Icons.person,
          color: Colors.black38,
          size: 35.0,
        ),
      ),
      body: pages[_SelectIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _SelectIndex,
        onTap: _onNavigationItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'Tarjetas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfiles',
          ),
        ],
      ), //Container(
      //     color: Colors.white,
      //     child: SafeArea(
      //         child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         GestureDetector(
      //           onTap: () {
      //             _onPressedDashboard(context);
      //           },
      //           child: Container(
      //               width: 250.0,
      //               margin: const EdgeInsets.only(bottom: 50.0),
      //               decoration: const BoxDecoration(
      //                 color: Colors.transparent,
      //                 borderRadius: BorderRadius.all(Radius.circular(10.0)),
      //               ),
      //               child: Center(
      //                 child: Text(
      //                   "Hola mundo :)",
      //                   style: GoogleFonts.poppins(
      //                       color: Colors.black,
      //                       fontSize: 40.0,
      //                       fontWeight: FontWeight.bold),
      //                   textAlign: TextAlign.center,
      //                 ),
      //               )),
      //         ),
      //         Padding(
      //           padding: EdgeInsets.only(bottom: 10.0),
      //           child: Text(
      //               "En este curso, estamos aprendiendo Flutter, con los estudiantes de software.",
      //               textAlign: TextAlign.center,
      //               style: GoogleFonts.poppins(
      //                   color: Colors.black, fontSize: 15.0)),
      //         ),
      //         const SizedBox(
      //           height: 20,
      //         ),
      //         Container(
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             crossAxisAlignment: CrossAxisAlignment.center,
      //             children: [
      //               MaterialButton(
      //                 onPressed: () {
      //                   _onPressedDashboard(context);
      //                 },
      //                 color: HexColor("#DCDCDC"),
      //                 shape: RoundedRectangleBorder(
      //                   borderRadius: BorderRadius.circular(6),
      //                 ),
      //                 child: const Text("Dahsboard"),
      //               ),
      //               const SizedBox(height: 10.0),
      //               MaterialButton(
      //                 onPressed: () {
      //                   _onPressedEstados(context);
      //                 },
      //                 color: HexColor("#DCDCDC"),
      //                 shape: RoundedRectangleBorder(
      //                   borderRadius: BorderRadius.circular(6),
      //                 ),
      //                 child: const Text("Estados"),
      //               ),
      //               const SizedBox(height: 15.0),
      //               MaterialButton(
      //                 onPressed: () {
      //                   _onPressedBackground(context);
      //                 },
      //                 color: HexColor("#DCDCDC"),
      //                 shape: RoundedRectangleBorder(
      //                   borderRadius: BorderRadius.circular(6),
      //                 ),
      //                 child: const Text("Background"),
      //               ),
      //               MaterialButton(
      //                 onPressed: () {
      //                   _onPressedBackground(context);
      //                 },
      //                 color: HexColor("#DCDCDC"),
      //                 shape: RoundedRectangleBorder(
      //                   borderRadius: BorderRadius.circular(6),
      //                 ),
      //                 child: const Text("Tarjetas"),
      //               ),
      //               MaterialButton(
      //                 onPressed: () {
      //                   _onPressedBackground(context);
      //                 },
      //                 color: HexColor("#DCDCDC"),
      //                 shape: RoundedRectangleBorder(
      //                   borderRadius: BorderRadius.circular(6),
      //                 ),
      //                 child: const Text("Listas"),
      //               ),
      //             ],
      //           ),
    );
  }
}
