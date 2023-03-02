import 'package:app_medidas/screens/add_measure_screen.dart';
import 'package:app_medidas/screens/client_list_screen.dart';
import 'package:app_medidas/screens/motivational_quotes_screen.dart';
import 'package:app_medidas/widgets/dialog_box.dart';
import 'package:app_medidas/widgets/measure_buttons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget 
{
  final String title;

  const HomeScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 255, 225),
      appBar: AppBar(
        title: Text(title),
      ),

      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Column(
                      children: const [
                        Text(
                          'Bienvenido a tu libreta de medidas',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                        ),

                        SizedBox(height: 15),

                        Text(
                          'Con tu propia libreta de medidas digital podrás organizar todas las medidas de tus clientes de forma cómoda',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17
                          ),
                        ),
                      ],
                    )
                  ),
                  
                  Column(
                    children: [
                      MyButton(
                        text: 'Añadir medidas', 
                        onPressed: () 
                        {
                          showDialog(
                            context: context, 
                            builder: (context) 
                            {
                              return const DialogBox();
                            },
                          );
                        },
                      ),

                      const Padding(padding: EdgeInsets.all(10)),

                      MyButton(
                        text: 'Ver medidas guardadas', 
                        onPressed: () 
                        {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const ClientListScreen(),
                            )
                          );
                        },
                      ),

                      const Padding(padding: EdgeInsets.all(10)),
                      
                      MyButton(
                        text: 'Secreto...', 
                        onPressed: () 
                        {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const MotivationalQuotesScreen(),
                            )
                          );
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}