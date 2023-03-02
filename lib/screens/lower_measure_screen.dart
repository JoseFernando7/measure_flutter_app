import 'package:app_medidas/models/measure.dart';
import 'package:flutter/material.dart';

class LowerMeasureScreen extends StatelessWidget 
{
  final LowerMeasures clientMeasures;

  const LowerMeasureScreen({super.key, required this.clientMeasures});

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
                            'Cintura:',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                          Text(clientMeasures.waistLower == ''
                            ? '-'
                            : clientMeasures.waistLower,
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
                          Text(clientMeasures.hipLower == ''
                            ? '-'
                            : clientMeasures.hipLower,
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
                            'Pierna:',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                          Text(clientMeasures.leg == ''
                            ? '-'
                            : clientMeasures.leg,
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
                            'Rodilla:',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                          Text(clientMeasures.knee == ''
                            ? '-'
                            : clientMeasures.knee,
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
                            'Bota:',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                          Text(clientMeasures.boot == ''
                            ? '-'
                            : clientMeasures.boot,
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
                          Text(clientMeasures.heightLower == ''
                            ? '-'
                            : clientMeasures.heightLower,
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
                            'Tiro:',
                            style: TextStyle(
                              fontSize: 25
                            ),
                          ),
                          Text(clientMeasures.crotch == ''
                            ? '-'
                            : clientMeasures.crotch,
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
      ),
    );
  }
}