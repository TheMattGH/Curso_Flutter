import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Tarjetas extends StatefulWidget {
  const Tarjetas({super.key});

  @override
  State<Tarjetas> createState() => _TarjetasState();
}

class _TarjetasState extends State<Tarjetas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text("Tarjetas",
                style:
                    GoogleFonts.poppins(color: Colors.black, fontSize: 20.0))),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.notifications,
              color: Colors.grey[400],
              size: 25,
            ),
          )
        ],
        leading: Icon(
          Icons.menu,
          color: Colors.grey[400],
          size: 35.0,
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Tarjetas",
                style: GoogleFonts.poppins(color: Colors.black, fontSize: 20),
              ),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Container(
                  width: 320,
                  padding: EdgeInsets.all(20),
                  height: 160,
                  decoration: BoxDecoration(
                    color: Colors.blue[500],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.credit_card_sharp,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          "\$10000",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "ABCDER123",
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 17),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "12/09/2025",
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 17),
                          textAlign: TextAlign.left,
                        ),
                      ]),
                ),
              ),
              const SizedBox(
                height: 30,
                child: Center(
                    child: Icon(
                  Icons.arrow_drop_down_outlined,
                  color: Colors.black26,
                  size: 30,
                )),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.route,
                            color: Colors.white,
                            size: 35,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Recorridos",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ]),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.receipt_long_sharp,
                            color: Colors.white,
                            size: 35,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Recargas",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          )
                        ]),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.cancel_outlined,
                            color: Colors.white,
                            size: 35,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Bloquear",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          )
                        ]),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star_border,
                            color: Colors.white,
                            size: 35,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Predeterminada",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )
                        ]),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: 280,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                          size: 35,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Puntos de recarga",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.add, color: Colors.white),
        label: const Text(
          "Añadir Tarjeta",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: HexColor("#32CD32"),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.transparent,
      //   elevation: 0,
      //   child: Container(
      //     height: 50,
      //     color: Colors.white,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         IconButton(
      //           onPressed: () {},
      //           icon:
      //               Icon(Icons.account_circle_outlined, color: Colors.black38),
      //         ),
      //         IconButton(
      //           onPressed: () {},
      //           icon: Icon(Icons.show_chart_outlined, color: Colors.black38),
      //         ),
      //         IconButton(
      //           onPressed: () {},
      //           icon: Icon(Icons.train_outlined, color: Colors.black38),
      //         ),
      //         IconButton(
      //           onPressed: () {},
      //           icon:
      //               Icon(Icons.card_membership_rounded, color: Colors.black38),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
