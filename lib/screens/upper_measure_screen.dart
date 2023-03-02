import 'package:app_medidas/models/measure.dart';
import 'package:flutter/material.dart';

class UpperMeasureScreen extends StatelessWidget 
{
  final UpperMeasures clientMeasures;

  const UpperMeasureScreen({super.key, required this.clientMeasures});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 255, 225),
      appBar: AppBar(
        title: const Text('Medidas'),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                Text(
                  clientMeasures.name,
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold
                  ),
                ),

                Text(
                  clientMeasures.cellNumber,
                  style: const TextStyle(
                    fontSize: 25,
                    //fontWeight: FontWeight.bold
                  ),
                ),
      
                const Padding(padding: EdgeInsets.only(bottom: 20)),
                const Divider(height: 2, color: Colors.black),
                const Padding(padding: EdgeInsets.only(top: 20)),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Hombro:',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                          Text(clientMeasures.shoulder == ''
                            ? '-'
                            : clientMeasures.shoulder,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 25
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Cotilla:',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                          Text(clientMeasures.cotilla == ''
                            ? '-'
                            : clientMeasures.cotilla,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 25
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Busto:',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                          Text(clientMeasures.bust == ''
                            ? '-'
                            : clientMeasures.bust,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 25
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Contorno busto:',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                          Text(clientMeasures.bustCircumference == ''
                            ? '-'
                            : clientMeasures.bustCircumference,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 25
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Altura busto:',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                          Text(clientMeasures.bustHeight == ''
                            ? '-'
                            : clientMeasures.bustHeight,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 25
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Separación busto:',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                          Text(clientMeasures.bustSeparation == ''
                            ? '-'
                            : clientMeasures.bustSeparation,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 25
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Escote:',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                          Text(clientMeasures.cleavage == ''
                            ? '-'
                            : clientMeasures.cleavage,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 25
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Espalda:',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                          Text(clientMeasures.back == ''
                            ? '-'
                            : clientMeasures.back,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 25
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Cintura:',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                          Text(clientMeasures.waist == ''
                            ? '-'
                            : clientMeasures.waist,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 25
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Cadera:',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                          Text(clientMeasures.hip == ''
                            ? '-'
                            : clientMeasures.hip,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 25
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Talle delantero:',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                          Text(clientMeasures.frontSize == ''
                            ? '-'
                            : clientMeasures.frontSize,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 25
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Talle posterior:',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                          Text(clientMeasures.backSize == ''
                            ? '-'
                            : clientMeasures.backSize,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 25
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Largo:',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                          Text(clientMeasures.height == ''
                            ? '-'
                            : clientMeasures.height,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 25
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Manga:',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                          Text(clientMeasures.sleeve == ''
                            ? '-'
                            : clientMeasures.sleeve,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 25
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Contorno manga:',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                          Text(clientMeasures.sleeveCircumference == ''
                            ? '-'
                            : clientMeasures.sleeveCircumference,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 25
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Puño:',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                          Text(clientMeasures.fist == ''
                            ? '-'
                            : clientMeasures.fist,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontSize: 25
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}