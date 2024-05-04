import 'package:curso_basico_flutter/widget/pastel_chart.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:curso_basico_flutter/tarjetas.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    var ancho = MediaQuery.of(context).size.width;
    var alto = MediaQuery.of(context).size.height;
    TextStyle style_titles = TextStyle(
        color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);

    void onPressedTarjetas(BuildContext context) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return const Tarjetas();
        },
      ));
    }

    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text("Mi perfil",
                  style: GoogleFonts.poppins(
                      color: Colors.black, fontSize: 20.0))),
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
        body: Container(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Stack(
                alignment: const Alignment(-1.0, 0.1),
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 30),
                    decoration: BoxDecoration(
                      color: HexColor("#FF0000"),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: ancho,
                    height: 150,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Matias Echeverria",
                                style: GoogleFonts.poppins(
                                    color: Colors.white, fontSize: 20),
                                textAlign: TextAlign.left,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.card_giftcard,
                                    color: Colors.black87,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "07510019421",
                                        style: style_titles,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "\$0.16",
                                        style: style_titles,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Text(
                                "Ver perfil",
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 75,
                    height: 75,
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://cdn-icons-png.flaticon.com/512/4792/4792944.png"),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                child: Text(
                  "Resumen marzo 2024",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              PastelChart(
                  saldoMesActual: 2.5,
                  regarcaMesActual: 5.6,
                  pasajemesActual: 10.5,
                  saldoMesAnterior: 2.5),
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                child: Text(
                  "Resumen Septiembre 2022",
                  style: GoogleFonts.poppins(
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 10.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.bus_alert),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Parada Favorita"),
                                Text("Mi parada Favorita")
                              ],
                            )
                          ],
                        ),
                        Text("45")
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    LinearPercentIndicator(
                      percent: 0.45,
                      lineHeight: 15.0,
                      progressColor: Colors.redAccent,
                      backgroundColor: Colors.grey[400],
                      barRadius: const Radius.circular(16),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 10.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.bus_alert),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Parada Favorita"),
                                Text("Mi parada Favorita")
                              ],
                            )
                          ],
                        ),
                        Text("75")
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    LinearPercentIndicator(
                      percent: 0.75,
                      lineHeight: 15.0,
                      progressColor: Colors.redAccent,
                      backgroundColor: Colors.grey[400],
                      barRadius: const Radius.circular(16),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 10.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.bus_alert),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Parada Favorita"),
                                Text("Mi parada Favorita")
                              ],
                            )
                          ],
                        ),
                        Text("58")
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    LinearPercentIndicator(
                      percent: 0.58,
                      lineHeight: 15.0,
                      progressColor: Colors.redAccent,
                      backgroundColor: Colors.grey[400],
                      barRadius: const Radius.circular(16),
                    )
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.message),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Reclamos, Sugerencias",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
           Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.message,
                    size: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "SOS - ECU 911",
                    style: GoogleFonts.poppins(
                    color: Colors.grey,
                  ),,
                  ),
                ],
              )
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            onPressedTarjetas(context);
          },
          child: const Icon(Icons.add),
          backgroundColor: HexColor("#FF0000"),
        ));
  }
}
