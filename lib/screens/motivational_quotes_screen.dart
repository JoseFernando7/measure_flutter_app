import 'package:app_medidas/utils/quotes.dart';
import 'package:flutter/material.dart';

class MotivationalQuotesScreen extends StatefulWidget 
{
  const MotivationalQuotesScreen({super.key});

  @override
  State<MotivationalQuotesScreen> createState() => _MotivationalQuotesScreenState();
}

class _MotivationalQuotesScreenState extends State<MotivationalQuotesScreen> 
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 255, 225),
      appBar: AppBar(
        title: const Text(''),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.deepPurple)
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  Qoutes().choiceRandomQuote(),
                  //textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 35,
                  ),
                ),
              ),
            ),

            FloatingActionButton.extended(
              backgroundColor: Theme.of(context).primaryColor,
              foregroundColor: Colors.black,
              label: const Text(
                'Cambiar frase', 
                style: TextStyle(fontSize: 18)
              ),
              icon: const Icon(Icons.format_quote_rounded),
              onPressed: ()
              {
                Qoutes().choiceRandomQuote();
                setState(() {});
              },
            )
          ],
        ),
      ),
    );
  }
}